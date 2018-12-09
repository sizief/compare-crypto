module CompareCrypto
  module Parser
    class Args
      def initialize(args)
        Config.source = args[0]
        Config.target = args[1]
        validates_required_args
      end

      def validates_required_args
        raise CompareCrypto::Errors::EnvError if Config.cryptocompare_token.nil?
        if Config.source.nil? || Config.target.nil?
          raise CompareCrypto::Errors::ArgError
        end
      end
    end
  end
end
