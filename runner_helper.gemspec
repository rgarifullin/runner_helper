# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'runner_helper/version'

Gem::Specification.new do |spec|
  spec.name          = 'runner_helper'
  spec.version       = RunnerHelper::VERSION
  spec.authors       = ['Rinat Garifullin']
  spec.email         = ['ringarifullin@gmail.com']

  spec.summary       = 'Rails runner generator'
  spec.description   = 'Rails runner generator which works with Systemd.'
  spec.homepage      = 'https://github.com/ringarifullin/runner_helper'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rails'
  spec.add_dependency 'exception_notification'

  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'minitest-reporters', '~> 1.1'
  spec.add_development_dependency 'rubocop', '~> 0'
end
