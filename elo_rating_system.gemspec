# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = 'elo_rating_system'
  spec.version       = File.read('VERSION.semver').chomp
  spec.authors       = ['Cyril Kato']
  spec.email         = ['contact@cyril.email']

  spec.summary       = 'Elo rating system'
  spec.description   = 'A method for calculating the relative skill levels ' \
                       'of players in zero-sum games such as chess.'
  spec.homepage      = 'https://github.com/sashite/elo_rating_system'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(fix)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler',  '~> 1.16'
  spec.add_development_dependency 'fix',      '~> 0.17'
  spec.add_development_dependency 'rake',     '~> 12.3'
end
