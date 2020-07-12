# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name         = 'elo_rating_system'
  spec.version      = File.read('VERSION.semver').chomp
  spec.author       = 'Cyril Kato'
  spec.email        = 'contact@cyril.email'
  spec.summary      = 'Elo rating system'
  spec.description  = 'A method for calculating the relative skill levels ' \
                      'of players in zero-sum games such as chess.'
  spec.homepage     = 'https://github.com/sashite/elo_rating_system'
  spec.license      = 'MIT'
  spec.files        = Dir['LICENSE.md', 'README.md', 'lib/**/*']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'fix', '~> 1.0.0.beta4'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop-performance'
  spec.add_development_dependency 'rubocop-thread_safety'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'yard'
end
