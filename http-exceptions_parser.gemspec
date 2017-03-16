lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'http/exceptions_parser/version'
require 'time'

Gem::Specification.new do |s|
  s.name          = 'http-exceptions_parser'
  s.version       = Http::ExceptionsParser::VERSION
  s.date          = Date.today.to_s
  s.authors       = ['Kobus Joubert']
  s.email         = ['kobus@translate3d.com']
  s.license       = 'MIT'

  s.summary       = %q{http-exceptions message parser}
  s.description   = %q{Parses the exception message returned from the http-exceptions gem.}
  s.homepage      = "http://rubygems.org/gems/http-exceptions_parser"

  if s.respond_to?(:metadata)
    s.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  s.required_ruby_version = '>= 2.3.0'

  s.add_development_dependency 'bundler', '~> 1.13'
  s.add_development_dependency 'rspec', '~> 3.4'
  s.add_development_dependency 'rake', '~>, 10.0'

  s.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  s.require_paths = ['lib']
end
