require 'sinatra'
require 'haml'
require 'coffee-script'

get '/hi' do
  haml :index, format: :html5
end
