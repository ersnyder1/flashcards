require 'open-uri'
require 'json'

class FlashcardsController < ApplicationController
  def index
  
    url = "http://kiei925.herokuapp.com/students.json?access_token=broncos"
    raw_data = open(url).read
    parsed_data = JSON.parse(raw_data)
    @students = parsed_data
 	
    @id= rand(0..28)
    @first_name = parsed_data[@id]["first_name"]
    @last_name = parsed_data[@id]["last_name"]
    @image_url = parsed_data[@id]["image_url"]

  end
end
