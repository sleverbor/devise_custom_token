$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "devise_custom_token/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "devise_custom_token"
  s.version     = DeviseCustomToken::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of DeviseCustomToken."
  s.description = "TODO: Description of DeviseCustomToken."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_development_dependency "rails", "~> 3.2.3"

  s.add_development_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"

  s.add_development_dependency "rspec-rails"

  s.add_development_dependency "devise"
end
