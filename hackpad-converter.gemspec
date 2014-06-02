# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hackpad/converter/version'

Gem::Specification.new do |spec|
  spec.name          = 'hackpad-converter'
  spec.version       = Hackpad::Converter::VERSION
  spec.authors       = ['mose']
  spec.email         = ['mose@mose.com']
  spec.summary       = %q(Library to transform Hackpad pads to other formats.)
  spec.description   = %q(Library to transform Hackpad html pads to other formats (Github Flavored Markdown only for now).)
  spec.homepage      = 'https://github.com/mose/hackpad-converter'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^spec\//)
  spec.require_paths = ['lib']

  spec.add_dependency 'nokogiri'

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'coveralls'
  #spec.add_development_dependency 'codeclimate-test-reporter'
end
