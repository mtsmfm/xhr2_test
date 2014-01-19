require 'sinatra'
require 'haml'
require 'json'

set :port, 4568

before do
  headers 'Access-Control-Allow-Origin' => '*'
end

get '/hi' do
  {message: 'Hello world'}.to_json
end
