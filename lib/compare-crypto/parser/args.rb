module CompareCrypto
  module Parser
    class Args
      def initialize(args)
        @args = args
        raise CompareCrypto::Errors::ArgError if args.empty?
        parse_args
        Config.source = args[0].upcase
        Config.target = args[1].upcase
        validates_required_args
      end

      def parse_args
        opts = OptionParser.new
        opts.banner = usage_msg
        opts.separator ''
        opts.separator 'options:'
        opts.on('-l', '--log', 'Generate a log file in the current directory') { Config.log = true }
        opts.on('-v', '--version', 'Show the Compare Crypto version') { puts("compare-crypto #{CompareCrypto::VERSION}"); exit }
        opts.on('-h', '--help', 'Show this message') { puts(opts); exit }
        opts.parse!(@args)
      end

      def usage_msg
        <<~USAGE.freeze
        Usage:
          compare-crypto [options]
          See https://github.com/sizief/compare-crypto for more information.
        USAGE
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
