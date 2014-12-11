# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'practica11/version'

Gem::Specification.new do |spec|
  spec.name          = "practica11"
  spec.version       = Practica11::VERSION
  spec.authors       = ["alu0100547139"]
  spec.email         = ["alu0100547139@ull.edu.es"]
  spec.summary       = %q{Gema practica 11}
  spec.description   = %q{Practica realizada sobre un quiz}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 2.11"
end
