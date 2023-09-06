# authentication_controller.rb

class AuthenticationController < Sinatra::Application
 
    set :root, File.expand_path('..', File.dirname(__FILE__))
    set :views, Proc.new { File.join(root, 'views') }
    set :public_folder, File.dirname(__FILE__) + '/public'

 
    get '/signup' do
        erb :new_user3
    end
    
    get '/' do
         erb :login_user
    end
    
  
    post '/login' do
        name_value = params[:name]
        user = User.find_by(name: params[:name])
        #result = user.authenticate(params[:password])
        if user && user.authenticate(params[:password])
          session[:user_id] = user.id
          session[:user_name] = user.name
          session[:points] = user.score
          #"La autenticación fue exitosa #{user.id}"
          redirect '/pregunta'

        else
            @error_message = 'No se encuentra al usuario'
            erb :error
        
        end
      end
    

    post '/signup' do
        user = User.new(name: params[:name], password: params[:password])
        user.save
        @message = "Inserción ok."
        session[:user_id] = user.id
        session[:user_name] = user.name
        session[:points] = user.score
        erb :info
    
     end

 get '/logout' do
    session.clear
    redirect '/'
  end
 


  
  end