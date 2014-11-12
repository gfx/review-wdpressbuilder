# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'review/wdpressbuilder/version'

Gem::Specification.new do |spec|
  spec.name          = "review-wdpressbuilder"
  spec.version       = Review::WDPRESSBuilder::VERSION
  spec.authors       = ["FUJI Goro (gfx)"]
  spec.email         = ["gfuji@cpan.org"]
  spec.summary       = %q{Re:VIEW custom builder for the WEB+DB PRESS editorial team}
  spec.description   = spec.summary
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "review"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
