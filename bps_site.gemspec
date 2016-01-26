# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bps_site/version'

Gem::Specification.new do |spec|
  spec.name          = "bps_site"
  spec.version       = BpsSite::VERSION
  spec.authors       = ["Martin Becker"]
  spec.email         = ["mbeckerwork@gmail.com"]

  spec.summary       = %q{TODO: Write a short summary, because Rubygems requires one.}
  spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # back end

  ##server
  spec.add_runtime_dependency 'puma', '~> 2.15'

  ##framework
  spec.add_runtime_dependency 'sinatra', '~> 1.4'

  ##asset
  spec.add_runtime_dependency 'sprockets', '~> 3.4'
  spec.add_runtime_dependency 'sprockets-helpers', '~> 1.2'
  spec.add_runtime_dependency 'sass', '~> 3.4'
  spec.add_runtime_dependency 'yui-compressor', '~> 0.12'

  ##support
  spec.add_runtime_dependency 'easy_set', '~> 0.1'
  spec.add_runtime_dependency 'json', '~> 1.8'

  ##documentation
  spec.add_runtime_dependency 'yard', '~> 0.8'

  # front end
  spec.add_runtime_dependency 'opal' , '~> 0.8'
  spec.add_runtime_dependency 'ruta', '~> 1.0'
  spec.add_runtime_dependency 'reactive-ruby', '~> 0.7'
  spec.add_runtime_dependency 'opal-browser', '~> 0.2'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
end
