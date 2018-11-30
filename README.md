# Compare::Crypto

Get the latest tarde price for different cryptocurrencies and send it to


- twitter [Original bot Twitter account]((https://twitter.com/Cryptoprice2)
- TODO: Slack 


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'compare-crypto'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install compare-crypto

## Usage
1. Rename the `.env.example` to `.env`
2. Update the `.env` file with Twitter API tokens
3. Update the Interval number in `.env`
4. run  
    $ whenever --update-crontab


To disable the cron job, comment the `config/schedule.rb` and run `whenever --update-crontab`. Check your current cron status with `crontab -l`

## CLI

    $ gem install compare-crypto
    $ compare-crypto BTC USD

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sizief/compare-crypto. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Compare::Crypto project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/sizief/compare-crypto/blob/master/CODE_OF_CONDUCT.md).