lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'compare-crypto/version'

Gem::Specification.new do |spec|
  spec.name          = 'compare-crypto'
  spec.version       = CompareCrypto::VERSION
  spec.authors       = ['sizief']
  spec.email         = ['sizief@gmail.com']

  spec.summary       = 'get crypto prices'
  spec.description   = 'get prices for most wanted crypto currencies'
  spec.homepage      = 'https://github.com/sizief/compare-crypto'
  spec.license       = 'MIT'

  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.17.3'
  spec.add_development_dependency 'dotenv', '~> 2.5.0'
  spec.add_development_dependency 'faraday'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'twitter', '~> 6.2.0'
  spec.add_development_dependency 'webmock', '~> 2.1'
  spec.add_development_dependency 'whenever'
  spec.add_runtime_dependency 'colorize', '~> 0.8'
end
