require 'sinatra/base'

require 'httparty'
require 'nokogiri'
require 'json'
require 'pry'

module Sinatra
  module Scraper
    def scrape

      response = HTTParty.get('https://ventura.craigslist.org/d/web-html-info-design/search/web')

      parse_page = Nokogiri::HTML(response)

      jobs_array = []

      parse_page.css('.result-row').css('a').map do |a|
        post_name = a.text
        jobs_array.push(post_name)
      end

    end
  end

  helpers Scraper
end