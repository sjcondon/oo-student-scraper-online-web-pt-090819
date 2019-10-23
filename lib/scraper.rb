require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html(open index_url)
    list = Nokogiri::HTML(html)
    names = list.css(".student-name")
    names_array = []
    names.each do |item|
      names_array << item.text
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

