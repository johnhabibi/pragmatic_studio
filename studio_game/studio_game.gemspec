Gem::Specification.new do |s|
  s.name         = 'Prag_Studio_Game'
  s.version      = '0.01'
  s.author       = 'John Habibi'
  s.email        = 'johnhabibi@gmail.com'
  s.homepage     = 'http://www.johnhabibi.co'
  s.summary      = 'This is the Studio Game built from Pragmatic Studio'
  s.licenses     = ['MIT']
  s.test_files    = Dir['spec/**/*']
  s.executables   = ['studio_game']

  s.required_ruby_version = '>=1.9'
  s.add_development_dependency 'rspec'
end
