Gem::Specification.new do |spec|
  spec.name          = 'jade-rails'
  spec.version       = '1.8.0.0'
  spec.author        = 'Paul Raythattha'
  spec.email         = 'paul@appfactories.com'
  spec.summary       = %q{Jade adapter for the Rails asset pipeline.}
  spec.description   = %q{Jade adapter for the Rails asset pipeline.}
  spec.homepage      = 'https://github.com/mahipal/jade-rails'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})

  spec.add_dependency 'execjs'
  spec.add_dependency 'tilt'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake',    '~> 10.0'
end
