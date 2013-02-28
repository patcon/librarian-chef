# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "librarian/chef/version"

Gem::Specification.new do |s|
  s.name        = "librarian-chef"
  s.version     = Librarian::Chef::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jay Feldblum"]
  s.email       = ["y_feldblum@yahoo.com"]
  s.homepage    = ""
  s.summary     = %q{Librarian-Chef}
  s.description = %q{Librarian-Chef}

  s.rubyforge_project = "librarian-chef"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency "thor", "~> 0.15"

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "webmock"
  s.add_development_dependency "fakefs", "~> 0.4.2"

  s.add_dependency "librarian"
  s.add_dependency "chef", ">= 0.10"
  s.add_dependency "highline"
  s.add_dependency "archive-tar-minitar", ">= 0.5.2"
end
