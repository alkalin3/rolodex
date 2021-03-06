# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rolodex/version'

Gem::Specification.new do |spec|
  spec.name          = "rolodex"
  spec.version       = Rolodex::VERSION
  spec.authors       = ["Darby Frey"]
  spec.email         = ["darby@bellycard.com"]
  spec.description   = %q{Bellystyle}
  spec.summary       = %q{Bellystyle}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'compass'
  spec.add_dependency 'sass'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end