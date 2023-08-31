# spec/app_spec.rb
require 'rack/test'

RSpec.describe 'Sinatra App' do
  include Rack::Test::Methods

  def app
    # Aquí debes proporcionar una referencia a tu aplicación Sinatra
    # Por ejemplo, si tu clase de aplicación se llama 'App', puedes hacerlo así:
    App
  end

  it 'displays the homepage' do
    get '/signup' # Accede a la ruta '/signup' definida en tu aplicación
    expect(last_response.status).to eq(200) # Verifica el código de respuesta HTTP
  end
end