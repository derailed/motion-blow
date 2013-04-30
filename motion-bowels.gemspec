# -*- encoding: utf-8 -*-
require File.expand_path('../lib/motion-bowels/version.rb', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'motion-bowels'
  gem.version       = MotionBowels::VERSION
  gem.authors       = ['Fernand Galiana']
  gem.email         = ['fernand.galiana@gmail.com']
  gem.summary       = %{Smooth out your Rubymotion dumps!}
  gem.description   = "Apple submissions got you down?" +
                      "MotionBowels allows you to dump all you screens in hi-res accross a range of devices"
                      "Write a test script - run it - upload screen dumps - Done!"
  gem.homepage      = 'http://derailed.github.com/motion-bowels'
  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^spec/})
  gem.require_paths = ['lib']
  
  gem.add_dependency 'macbacon'
end