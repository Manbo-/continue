$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "continue/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "continue"
  s.version     = Continue::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "continue"
  s.description = "continue"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0.2"
  s.add_dependency "rake"
  s.add_dependency "rainbow"

  s.add_development_dependency "rspec-rails"
end
