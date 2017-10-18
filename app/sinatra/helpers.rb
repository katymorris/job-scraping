require 'sinatra/base'

module Sinatra
  module Scraper
    def wtf
      puts "scraperrrr"
    end
  end

  helpers Scraper
end