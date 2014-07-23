# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'namaste/version'

Gem::Specification.new do |spec|
  spec.name          = "robut-namaste"
  spec.version       = Robut::Namaste::VERSION
  spec.authors       = ["Jordan Kincaid-Smith"]
  spec.email         = ["jhloa2@gmail.com"]
  spec.summary       = %q{Robut namaste plugin}
  spec.description   = %q{Responds with randome stayoutofmynamastespace quotes}
  spec.homepage      = "http://github.com/jhloa2/robut-namaste"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
