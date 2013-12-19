# Load path and gems/bundler
$LOAD_PATH << File.expand_path(File.dirname(__FILE__))
require "rubygems"
require "bundler"
Bundler.require
require 'json'
require 'oat/adapters/json_api'
require "sinatra/base"
require "sinatra/reloader"
require "sinatra/json"

# Local config
require "find"
%w{config/initializers models serializers}.each do |load_path|
  Find.find(load_path) { |f| require f unless f.match(/\/\..+$/) || File.directory?(f) }
end

# Load app
require "server"

run Server
