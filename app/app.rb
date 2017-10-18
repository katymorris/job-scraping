require 'sinatra'
require './sinatra/helpers.rb'
require 'json'

class HiSinatra < Sinatra::Base
    helpers Sinatra::Scraper
    get '/' do
        erb :index
    end

    get '/test' do
        "Hello World"
    end
end

#rackup -p8080 --host 0.0.0.0