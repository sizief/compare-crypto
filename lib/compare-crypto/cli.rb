module CompareCrypto
  class CLI
    def initialize
      source = 'BTC'
      target = 'USD'
      @gateway = CompareCrypto::Gateway.new({source: source, target: target})
    end

    def get_price
      @gateway.get_price
    end
  end
end
  