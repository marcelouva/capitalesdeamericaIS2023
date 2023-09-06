require 'sinatra/base'
require 'bundler/setup'
require 'logger'
require 'sinatra/activerecord'

require 'sinatra/reloader' if Sinatra::Base.environment == :development
require 'sinatra/contrib'

require_relative 'models/person'
require_relative 'models/user'
require_relative 'models/car'
require_relative 'models/question'
require_relative 'models/option'
require_relative 'models/question_options'
require_relative 'models/answer'
require_relative 'lib/utils'

require_relative 'controllers/authentication_controller'





class App < Sinatra::Application
  use Rack::Session::Cookie, secret: "patagonia some_secret_key"
  use AuthenticationController

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

# Filtro global para verificar la sesión del usuario en todas las rutas

  before do
    unless ['/', '/logout','/login','/signup'].include?(request.path_info) || session[:user_name]
      redirect '/'
    end
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

   
  get '/pregunta' do
    if session[:user_id]
       @user_name = session[:user_name]
       @user_id = session[:user_id]
       @points = session[:points]
    #info.logger(session[:user_id].to_string)
       
    
  i = rand(1..Question.count)
       p=Question.find(i)



       @pregunta = p.name
       @q_id=p.question_id.to_s
   #Buscar las opciones
       option_list=[]
       p.options.each do |e|
    option_list.append(e.name)
  end   
   @opciones = option_list
   @x=p.posx
   @y=p.posy
   
   erb :question6
   else
     @message = "No estás logeado."
     erb :info
   end
   
   
 end


 post '/login1' do
#  name_value = params[:name]
#  user = User.find_by(name: params[:name])
#  result = user.authenticate(params[:password])
#  
#if result
#       "La autenticación fue exitosa"
#     else
#        "La autenticación falló"
#     end
#
  #"El valor de 'napassme' es #{user.authenticate(params[:password])}"        

# if user && user.authenticate(params[:password])
#    # El usuario ha iniciado sesión correctamente
#   session[:user_id] = user.id
#   session[:user_name] = user.name
#   session[:points] = user.score
#   redirect '/pregunta'
# else
#   @error_message = 'No se encuentra al usuario'
#    erb :error
#  end
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
        user = User.find(u_id)
        logger.info(">>>>>>>"+"#{u_id}"+"<<<<<<")    
        logger.info("sumo a score "+"#{user.score}"+"<<<<<<")    
        puntaje = user.score
        puntaje += 1 
        user.score = puntaje
        logger.info("sumo a score "+"#{user.score}"+"<--------")    

        user.save

        logger.info(u_id)
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
  






end

