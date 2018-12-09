module CompareCrypto
  module Errors
    class EnvError < StandardError
      def initialize
        super('You nees to get and an cryptocompare API key. Visit their webiste and put the key in .env file.')
      end
    end
  end
end
