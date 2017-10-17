require 'sinatra'
require 'json'

class HiSinatra < Sinatra::Base
    get '/' do
        @hello = "helloooooo"
        erb :index
    end
end