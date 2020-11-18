# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'atomic_first_or_create/version'

Gem::Specification.new do |spec|
  spec.name          = "atomic_first_or_create"
  spec.version       = AtomicFirstOrCreate::VERSION
  spec.authors       = ["EdgePetrol"]
  spec.email         = ["devops@edgepetrol.com"]
  spec.summary       = %q{ActiveRecord first_or_create that retries on RecordNotUnique exception}
  spec.description   = %q{first_or_create does not guarantee uniqueness by itself, and if there is a uniqueness constraint on the database, it may fail with a RecordNotUnique exception. This gem adds atomic_first_or_create, which, in conjunction with a uniqueness constraint, provides the correct behaviour.}
  spec.homepage      = "https://edgepetrol.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", '>= 4'

  spec.add_development_dependency "rake", '~> 13'
  spec.add_development_dependency "minitest", '~> 5'
  spec.add_development_dependency "sqlite3", '~> 1'
end
