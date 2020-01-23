require 'nokogiri'
require 'rspec'
require 'rubygems'
require 'open-uri'

page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))   

noms = []
array = []

#recupere les noms
page.xpath("/html/body/div[1]/div/div[2]/div[1]/div[2]/div[2]/div[2]/div[3]/div/table/tbody/tr/td[3]/div").each do |nom|
    noms << nom.text.to_s
end

#recupere les prix
tt_prix =[]
page.xpath("/html/body/div[1]/div/div[2]/div[1]/div[2]/div[2]/div[2]/div[3]/div/table/tbody/tr/td[5]/a").each do |prix|
tt_prix << prix.text.delete("$,").to_f
end

#array des hashs
 a_h_cours = noms.zip(tt_prix)
 a_h_cours.each do |a_ele|
 array << {a_ele[0]=>a_ele[1]}

 end
 puts array