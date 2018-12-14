require 'json'
require 'dotenv/load'
require 'colorize'
require 'logger'
require 'optparse'

require_relative 'compare-crypto/version'
require_relative 'compare-crypto/gateway'
require_relative 'compare-crypto/parser/args'
require_relative 'compare-crypto/main'
require_relative 'compare-crypto/config'

# errors
require_relative 'compare-crypto/errors/arg_error'
require_relative 'compare-crypto/errors/env_error'

# logger
require_relative 'compare-crypto/logger'
require_relative 'compare-crypto/multi_io'
