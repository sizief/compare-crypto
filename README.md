[![Maintainability](https://api.codeclimate.com/v1/badges/e861c24087df75e48d2d/maintainability)](https://codeclimate.com/github/sizief/compare-crypto/maintainability)

[![CircleCI](https://circleci.com/gh/sizief/compare-crypto.svg?style=svg)](https://circleci.com/gh/sizief/compare-crypto)

# Compare::Crypto

Get the latest tarde price for different cryptocurrencies and send it to


- Twitter [This one for example](https://twitter.com/Cryptoprice2)
- TODO: Slack 


## Usage
1. Rename the `.env.example` to `.env`
2. Update the `.env` file with Twitter API tokens
3. Update the Interval number in `.env`
4. Install dependencies  
```
    $ bundle install
```
5. Set cron job  
```
    $ bundle exec whenever --update-crontab
```


To disable the cron job, comment the `config/schedule.rb` and run `whenever --update-crontab`. Check your current cron status with `crontab -l`

## CLI

    $ bin/compare-crypto BTC USD
    
use -l to log.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sizief/compare-crypto. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Compare::Crypto project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/sizief/compare-crypto/blob/master/CODE_OF_CONDUCT.md).
