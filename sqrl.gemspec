$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sqrl/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sqrl"
  s.version     = Sqrl::VERSION
  s.authors     = ["Mike Barnard"]
  s.email       = ["michael.d.barnard@gmail.com"]
  s.homepage    = "https://github.com/SQRLy/sqrl_rails"
  s.summary     = "Secure Quick Reliable Login."
  s.description = "The SQRL system (pronounced \“squirrel\”) revolutionizes web site login and authentication. It eliminates many problems inherent in traditional login techniques. As seen on grc.com/sqrl/sqrl.html"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  
  s.add_dependency "rails", "~> 4.0.1"
  
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails", "~> 2.14.0"
  s.add_development_dependency "capybara", "~> 2.1.0"
  s.add_development_dependency "factory_girl_rails", "~> 4.3.0"
  s.add_development_dependency "guard-rspec", "~> 4.0.4"
  s.add_development_dependency "guard-livereload", "~> 2.0.0"
  s.add_development_dependency "spork-rails", "~> 4.0.0"
  s.add_development_dependency "guard-spork", "~> 1.5.1"
  s.add_development_dependency "terminal-notifier-guard"
  s.add_development_dependency "timecop", "~> 0.6.3"
  s.add_development_dependency "childprocess", "~> 0.3.6"
  s.add_development_dependency "binding_of_caller", "~> 0.7.2"
  s.add_development_dependency "better_errors", "~> 1.0.1"
  
end
