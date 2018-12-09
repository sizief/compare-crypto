module CompareCrypto
  class Config
    @cryptocompare_token = ENV['CRYPTOCOMPARE_TOKEN'].freeze
    class << self
      attr_accessor :consumer_key, :consumer_secret, :access_token,
                    :interval, :token_secret, :cryptocompare_token,
                    :source, :target
      def twitter
        @consumer_key = ENV['CONSUMER_KEY']
        @consumer_secret = ENV['CONSUMER_SECRET']
        @access_token = ENV['ACCESS_TOKEN']
        @interval = ENV['INTERVAL']
        @token_secret = ENV['TOKEN_SECRET']
      end
    end
  end
end
