module CompareCrypto
  class Main
    class << self
      def run(args)
        CompareCrypto::Parser::Args.new args
        CompareCrypto::Logger.setting(Config.log)
        Logger.info get_rates
      rescue StandardError => e
        puts e.message
      end

      private

      def get_rates
        response = CompareCrypto::Gateway.new(target: Config.target, source: Config.source).get_price
        json_response = JSON.parse(response[:body])
        amount = json_response.values[0].to_i.ceil.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse
        { amount: amount.to_s, currency: "#{Config.source}_#{Config.target}" }
      end
    end
  end
end
