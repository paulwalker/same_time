# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'same_time/version'

Gem::Specification.new do |spec|
  spec.name          = 'same_time'
  spec.version       = SameTime::VERSION
  spec.authors       = ['Paul Walker']
  spec.email         = ['github@paulwalker.tv']
  spec.summary       = %q{Constant time string comparison}
  spec.description   = %q{}
  spec.homepage      = 'https://github.com/paulwalker/same_time'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'minitest'
end
