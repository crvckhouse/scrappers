require 'spec_helper'
require '/Users/crvckhouse/Desktop/Projet_noko/lib/scrapper.rb'

describe "find coins method" do
  it "should return coins list in an array" do
    expect(coinS[3]).to eq("BNB")
 end
end
describe "find price method" do
  it "should return coins list in an array" do
    expect(priceS[3]).to eq("$373.44")
 end
end
