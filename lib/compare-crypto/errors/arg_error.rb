module CompareCrypto
  module Errors
    class ArgError < StandardError
      def initialize
        super("No arguments provided\nYou should provide the currencies for example 'USD BTC' and execute again.")
      end
    end
  end
end
