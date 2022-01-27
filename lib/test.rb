require 'pry'
require 'dotenv'
require 'rubygems'
require 'nokogiri'
require 'open-uri'






def hasheur(coin, prix)
  tableau3 = Hash[coin.zip (prix)].to_a
return tableau3
end
hasheur
