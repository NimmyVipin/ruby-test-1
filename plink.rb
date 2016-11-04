require 'open-uri'
require 'nokogiri'



page="https://redpanthers.co"
doc = Nokogiri::HTML(open(page))
title = doc.css('title').text

puts "Title: #{title}"



