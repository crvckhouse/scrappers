require 'pry'
require 'dotenv'
require 'rubygems'
require 'nokogiri'
require 'open-uri'




def get_town_name()
  villes = []
  url = "https://www.annuaire-des-mairies.com/val-d-oise.html"
  dept_page = Nokogiri::HTML(URI.open(url))
  return villes = dept_page.xpath("//a[contains(@class, 'lientxt')]/text()").map {|x| x.to_s.downcase.gsub(" ", "-") }
end



def email_l(town)
  email1 = []
  for i in 0...town.length

  page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/95/#{town[i]}.html"))

 email1 << page.xpath("//html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]/text()").text
end
return email1
end

puts email_town_result = Hash[get_town_name.zip(email_l(get_town_name))]
