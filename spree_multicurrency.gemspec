# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_multicurrency'
  s.version     = '1.1.0'
  s.summary     = 'Allows you to select a different currency than the main'
  s.description = ''
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'Diginess'
  s.email             = 'riccardo.degan@diginess.it'
  s.homepage          = 'http://www.diginess.com'

  #s.files         = `git ls-files`.split("\n")
  s.files        = Dir['CHANGELOG', 'README.md', 'LICENSE', 'lib/**/*', 'app/**/*', 'db/**/*', 'config/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core'

  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sqlite3'
end
