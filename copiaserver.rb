require 'sinatra/base'

require 'bundler/setup'
require 'logger'
require 'sinatra/activerecord'

require 'sinatra/reloader' if Sinatra::Base.environment == :development
require 'sinatra/contrib'


require_relative 'models/user'
require_relative 'models/car'
require_relative 'models/question'
require_relative 'models/option'
require_relative 'models/question_options'
require_relative 'models/answer'
require_relative 'lib/utils'

enable :sessions


before do
  unless ['/login', '/signup'].include?(request.path_info) || session[:username]
    redirect '/login'
  end
end



class App < Sinatra::Application
  use Rack::Session::Cookie, secret: "patagonia some_secret_key"

  def initialize(app = nil)
    super()
  end
  
  set :root,  File.dirname(__FILE__)
  set :views, Proc.new { File.join(root, 'views') }
  set :public_folder, File.dirname(__FILE__) + '/public'


  configure :production, :development do
    enable :logging

    logger = Logger.new(STDOUT)
    logger.level = Logger::DEBUG if development?
    set :logger, logger
  end


  configure :development do
    register Sinatra::Reloader
    after_reload do
      puts 'Reloaded...'
    end
  end

  get '/signup' do
    erb :new_user3
  end

  post '/signup' do
    user = User.new(name: params[:name], password: params[:password])
    user.save
    @message = "Inserción ok."
    session[:user_id] = user.id
    session[:user_name] = user.name

    erb :info

   end


  post '/users' do
  user = User.new(name: params[:name], password: params[:password])
  if user.save
     redirect "/users/#{user.id}"
  else
     # renderiza la vista de nuevo usuario con errores
     erb :new_user, locals: { errors: user.errors.full_messages }
   end
 end
  
  get '/users/:id' do
     @user = User.find(params[:id])
     erb :show_user
  end
 


  get '/ruta' do
    if session[:user_id]
      
      @message = "Ya te has logeado previamente "+ session[:user_name]
      erb :info
    else
      @message = "No estás logeado."
      erb :info
    end
  end

  get '/logout' do
    session.clear
    redirect '/'
  end

  

  get '/pregunta' do
       @user_name = session[:user_name]
       @user_id = session[:user_id]
       @points = session[:points]
    #info.logger(session[:user_id].to_string)
       #buscar la pregunta
       Question.count
       i = rand(1..Question.count)

       p=Question.find(i)
       @pregunta = p.name
       @q_id=p.question_id.to_s
   #Buscar las opciones
       option_list=[]
       p.options.each do |e|
    option_list.append(e.name)
     @opciones = option_list
     @x=p.posx
     @y=p.posy
   
   erb :question4
   
   
 end

 

  post '/respuesta' do
    q_id = params[:q_id]
    u_id = params[:u_id]
    selected_option = params[:opcion]
    logger.info("===>>>>>>"+"#{selected_option}")

    q = Question.find_by(question_id: q_id)
    usuario = User.find(u_id)
    i=0
    o_id=0
    options_text = ""
    q.options.each do |option|

      if option.name== selected_option
          o_id = option.option_id
      end   

    end
    begin
      Answer.create!(user_id: u_id, question_id: q_id, option_id: o_id)
      logger.info(">>>>>>>"+"#{o_id==q.option_id}"+"<<<<<<")    
      logger.info("#{o_id}")
      logger.info("#{q.option_id}")

      @message = ""

      if o_id==q.option_id
        session[:points]=session[:points]+1
        logger.info("respondiste bien!")
        # @message = "Cooooorrecto!! - Respuesta registrada OK."
         erb :correcto   
      else
        erb :incorrecto   

        #@message = "No es correcto!! - Respuesta registrada OK."
        
     end
     #erb :info
    rescue ActiveRecord::RecordNotUnique => e
      @message = "Ya has respondido a esta pregunta."
      erb :info
    end

  
    
  end
  



  post '/login' do
    user = User.find_by(name: params[:name])
    
    
    if user && user.authenticate(params[:password])
      # El usuario ha iniciado sesión correctamente
      session[:user_id] = user.id
      session[:user_name] = user.name
      session[:points] = 0
      #@message = "Login ok."
      #erb :info
      redirect '/pregunta'
      #redirect '/dashboard'
    else
      # La combinación de nombre de usuario y contraseña es incorrecta
      #redirect '/login'
      @error_message = 'No se encuentra al usuario'
      
      erb :error
    end
  end



  get '/' do
     erb :login_user
  end
end

