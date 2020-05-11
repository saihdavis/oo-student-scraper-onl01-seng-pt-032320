require 'open-uri'
require 'pry'
require "nokogiri"

class Scraper

  def self.scrape_index_page(index_url)
    
    scraped_students = []
    
    html = Nokogiri::HTML(open(index_url))
    html.css(".student-card").collect do |student| 
    student_info = {
      profile_url: student.css("a").attribute("href").value,
      name: student.css("h4.student-name").text,
      location: student.css("p.student-location").text
    }
    #binding.pry
    scraped_students << student_info
  end
    scraped_students
  
end
  
  def self.scrape_profile_page(profile_url)
    
    
    
    
    
    
    
  end

end