# frozen_string_literal: true

lib = File.join(__dir__, 'lib')
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'blur/persistence/version'

Gem::Specification.new do |spec|
  spec.name          = 'blur-persistence'
  spec.version       = Blur::Persistence::VERSION
  spec.authors       = ['Mikkel Kroman']
  spec.email         = ['mk@maero.dk']

  spec.summary       = 'Blur helper module to access a persistence'
  spec.homepage      = 'https://github.com/mkroman/blur-persistence'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'sequel', '~> 5.54'
end
