require 'sinatra'
require 'sinatra/reloader' if development?
require 'sass'

# set :public_folder, 'images'
# set :root         , File.dirname(__FILE__)

get('/styles.css'){ scss :styles }

get '/' do
  slim :home
end

get '/about' do
  @title = "All About This Website"
  slim :about
end

get '/contact' do
  slim :contact
end

not_found do
  slim :not_found
end
