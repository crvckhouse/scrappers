require 'pry'
require 'dotenv'
require 'rubygems'
require 'nokogiri'
require 'open-uri'


def coinS
  page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))

  symbol = []
    page.xpath('//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--hide-sm cmc-table__cell--sort-by__symbol"]').each do |node|
    symbol << node.text

   end
return symbol
end


def priceS
page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
  price = []
    page.xpath('//td [@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price"]').each do |prix|
    price << prix.text


    end
return price
end


def hasheur(coin, prix)
  tableau3 = Hash[coin.zip (prix)].to_a
return tableau3
end


def perform
symbol = coinS()
price = priceS()
resultat = hasheur(symbol,price)
end
