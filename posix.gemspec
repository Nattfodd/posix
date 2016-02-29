# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative 'lib/version'

Gem::Specification.new do |spec|
  spec.name          = 'posix'
  spec.version       = Posix::VERSION
  spec.authors       = ['Oleksii Kuznietsov']
  spec.email         = ['mail@nattfodd.com']
  spec.summary       = 'A simpler way to use POSIX gem to run processes'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'posix-spawn', '~> 0.3', '>= 0.3.11'
  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake', '~> 10.1', '>= 10.1.0'
  spec.add_development_dependency 'rspec', '3.4'
  spec.add_development_dependency 'byebug', '~> 3.1', '>= 3.1.2'
end
