# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "shitty/version"

Gem::Specification.new do |s|
  s.name        = "shitty"
  s.version     = Shitty::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["asur"]
  s.email       = ["arusarka@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{This gem is written in jest when I was on bench and had nothing much to work on. It
    is not written with an intention to belittle ruby. I love ruby. But thought why not write something to
    put a smile on your face}
  s.description = %q{Let's write some shit}

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rspec-unit'
  s.add_development_dependency 'ZenTest'

  s.files         = [
    'lib/shitty.rb',
    'lib/shitty/version.rb'
    ]
  s.test_files    = []
  s.extra_rdoc_files = ['README.rdoc']
# s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
