$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "whodunnit/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "whodunnit"
  s.version     = Whodunnit::VERSION
  s.authors     = ["Fletcher91"]
  s.email       = ["thomvankalkeren@gmail.com"]
  s.homepage    = "https://github.com/fletcher91/whodunnit"
  s.summary     = "A simple edit tracking system to keep track of who changed a model."
  s.description = "A simple edit tracking system to keep track of who changed a model."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "APACHE-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4.0.0"

  s.add_development_dependency "sqlite3"
end
