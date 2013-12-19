require_relative "spec_helper"
require_relative "../server.rb"

def app
  Server
end

describe Server do
  it "responds with a welcome message" do
    get '/'

    last_response.body.must_include 'Welcome to the Sinatra Template!'
  end
end
