require 'HTTParty'
require 'uri'

module CompareCrypto
  class Gateway
    include HTTParty
    BASE_URL = 'https://min-api.cryptocompare.com/data/'
    API_KEY = '995291cca787702fab2f1a992923ea60691c07e19e8e56b37630488ed8065fb8'
    
    def initialize args
      @source = args[:source] #BTC
      @target = args[:target] #USD
    end

    def get_price
      response = send_request prepare_url "price?fsym=#{@source}&tsyms=#{@target}"
      {body: response.body, code: response.code}
    end

    def prepare_url path
        URI(BASE_URL + path)
    end
    
    private
    def send_request url
      HTTParty.get(url)
    end
  end
end
    