# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'best_beaches/version'

Gem::Specification.new do |spec|
  spec.name          = "best_beaches"
  spec.version       = BestBeaches::VERSION
  spec.authors       = ["jjlippman"]
  spec.email         = ["jjlippman@earthlink.net"]

  spec.summary       = "This gem scrapes a url for the best beaches"
  spec.homepage      = "https://github.com/jjlippman/jimlippman-cli-gem.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "nokogiri", ">= 0"
  spec.add_development_dependency "pry", ">= 0"
end
