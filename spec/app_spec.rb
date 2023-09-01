# spec/app_spec.rb
require 'rack/test'

RSpec.describe 'Sinatra App' do
  include Rack::Test::Methods

  def app
    # incluir el nombre de la clase correspondiente a la Application definida en el server.rb
    
    App
  end

  it 'probando rutas del server' do
    get '/signup' # Accede a la ruta '/signup' 
    expect(last_response.status).to eq(200) # Verifica el código de respuesta HTTP
    expect(last_response).to be_ok
    expect(last_response.headers["Content-Type"]).to include("text/html")
    #expect(last_response).to redirect_to("/otra_ruta")
    expect(last_response.body).to include("Inscribite")# Verifica que la página que responde contenga ese texto
  end
end