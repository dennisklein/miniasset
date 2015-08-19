# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'miniasset/version'

Gem::Specification.new do |spec|
  spec.name          = "miniasset"
  spec.version       = Miniasset::VERSION
  spec.authors       = ["Dennis Klein"]
  spec.email         = ["d.klein@gsi.de"]
  spec.licenses      = ['LICENSE']

  spec.summary       = %q{Miniasset CLI}
  spec.description   = %q{CLI for the Miniasset Datacenter Management API.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", '~> 3.3'

  spec.add_dependency 'thor', '~> 0.19'
  spec.add_dependency 'rocket_pants', '~> 1.0'
end
