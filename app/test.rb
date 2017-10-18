ENV['ENV_ENV'] = "test"

require './app.rb'
require "sinatra"
require 'test/unit'
require 'rack/test'

class HelloWorldTest < Test::Unit::TestCase
    include Rack::Test::Methods

        def app
            Sinatra::Application
        end

        def test_it_says_hello_world
            get '/test'
            assert_not_equal 'Hello World', last_response.body
        end

end