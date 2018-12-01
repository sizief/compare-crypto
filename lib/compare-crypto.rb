require "json"
require 'dotenv/load'
require_relative "compare-crypto/version"
require_relative "compare-crypto/gateway"

module CompareCrypto 
  class Price
    def self.find source, target='USD'
      response = CompareCrypto::Gateway.new({source: source, target: target}).get_price
      json_response = JSON.parse(response[:body])
      amount = (json_response.values[0].to_i).ceil.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
      {amount: amount.to_s, currency: "#{source}_#{target}"}
    end
  end
    
end
