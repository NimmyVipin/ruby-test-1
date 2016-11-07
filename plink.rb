require 'open-uri'
require 'nokogiri'
require 'optparse'

options = {}
op= OptionParser.new do|opts|
  opts.on('-n', '--site site', 'site') do |site|
   options[:site] = site
  end   
 end
op.parse!

print 'Enter the site:'
options[:site] = gets.chomp

page =  options[:site]
doc = Nokogiri::HTML(open(page))
title = doc.css('title').text
puts "Title: #{title}"

h1 = doc.css('h1').text
puts "h1: #{h1}"

h2 = doc.css('h2').text
puts "h2: #{h2}"

h3 = doc.css('h3').text
puts "h3: #{h3}"

h4 = doc.css('h4').text
puts "h4: #{h4}"

