require 'sinatra'
require './sinatra/helpers.rb'
require 'json'

class HiSinatra < Sinatra::Base
    helpers Sinatra::Scraper
    get '/' do
        erb :index
    end
end