require_relative "lib/compare-crypto"
require "twitter"

#use http://v21.io/iwilldancetheoauthdanceforyou/ to generate acess tokens
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV['CONSUMER_KEY']
  config.consumer_secret     = ENV['CONSUMER_SECRET']
  config.access_token        = ENV['ACCESS_TOKEN']
  config.access_token_secret = ENV['TOKEN_SECRET']
end

message = Array.new
pairs = [{'BTC'=>'USD'}, {'ETH'=>'USD'}, {'BTC'=>'IRR'}]
pairs.each {|pair| message << CompareCrypto::Price.find(pair.keys[0], pair.values[0])}
client.update(message.map{|item| item[:amount]+" #"+item[:currency]+"\n"}.join)