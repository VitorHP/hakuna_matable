$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "hakuna_matable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "hakuna_matable"
  s.version     = HakunaMatable::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of HakunaMatable."
  s.description = "TODO: Description of HakunaMatable."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0.3"

  s.add_development_dependency "sqlite3"
end
