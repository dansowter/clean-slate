class Server < Sinatra::Base
  helpers Sinatra::JSON

  configure :development do
    register Sinatra::Reloader
  end

  get '/hello' do
    json GreetingSerializer.new({})
  end
end
