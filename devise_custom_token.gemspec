$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "devise_custom_token/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "devise_custom_token"
  s.version     = DeviseCustomToken::VERSION
  s.authors     = ["Rob Revels"]
  s.email       = ["rob.revels@g5searchmarketing.com"]
  s.homepage    = "https://github.com/sleverbor/devise_custom_token"
  s.summary     = "Customize basic auth header when using token_authenticatable with devise."
  s.description = "Customize basic auth header when using token_authenticatable with devise."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_development_dependency "rails", "~> 3.2.3"

  s.add_development_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"

  s.add_development_dependency "rspec-rails"

  s.add_development_dependency "devise"
end
