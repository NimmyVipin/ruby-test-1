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

url =  options[:site]
doc = Nokogiri::HTML(open(url))

ary=['title','h1','h2','h3','h4']
ary.each do |r|
 val = doc.css(r).text 
 puts "#{r}:"
 print "#{val}"
end




