require "compare-crypto/version"
require "compare-crypto/cli"
require "compare-crypto/gateway"


module CompareCrypto 
  class Price
    def self.find source, target='USD'
      CompareCrypto::Gateway.new({source: source, target: target}).get_price
    end
  end
    
end
