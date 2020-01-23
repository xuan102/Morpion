
require 'nokogiri'
require 'rspec'
require 'rubygems'
require 'open-uri'

page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/ableiges.html"))

mail = []


#recupere villes
#puts page.xpath("/html/body/div[1]/main/section[2]/div/table/tbody/tr[4]/td[2]").text
puts page.xpath("//tr/td").text

