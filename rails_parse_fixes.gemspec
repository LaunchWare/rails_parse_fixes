# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_parse_fixes/version'

Gem::Specification.new do |gem|
  gem.name          = "rails_parse_fixes"
  gem.version       = RailsParseFixes::VERSION
  gem.authors       = ["Dan Pickett"]
  gem.email         = ["dan.pickett@launchware.com"]
  gem.description   = %q{fixes VU#380039 by monkey patching}
  gem.summary       = %q{fixes VU#380039 by monkey patching}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'rails', '~> 2.3'

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'mocha'
end

