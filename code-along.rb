require 'nokogiri'
require 'open-uri'
require 'pry'

html_1 = open('https://flatironschool.com/')

doc_1 = Nokogiri::HTML(open('https://flatironschool.com/'))

puts doc_1.css(".site-header__hero__headline").text

html = open("https://web.archive.org/web/20160227204808/http://flatironschool.com/team")
doc = Nokogiri::HTML(html)

instructors = doc.css("#instructors .team-holder .person-box")

puts instructors 

instructors.each do |instructor|
  puts "Flatiron School <3 " + instructor.css("h2").text
end 

test_doc = Nokogiri::HTML(open('https://www.yogajournal.com/poses/types'))
indiv_pose = Nokogiri::HTML(open('https://www.yogajournal.com/poses/types/arm-balances'))
binding.pry 