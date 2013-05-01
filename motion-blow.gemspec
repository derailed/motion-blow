# -*- encoding: utf-8 -*-
require File.expand_path('../lib/motion-blow/version.rb', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'motion-blow'
  gem.version       = MotionBlow::VERSION
  gem.authors       = ['Fernand Galiana']
  gem.email         = ['fernand.galiana@gmail.com']
  gem.summary       = %{High-fiber formula for your Rubymotion dumps.}
  gem.description   = "Apple submissions got you down?" +
                      "MotionBlow allows you to dump all you screens in hi-res accross a range of devices"
                      "Write a test script - run it - upload screen dumps - Done!"
  gem.homepage      = 'http://derailed.github.com/motion-blow'
  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^spec/})
  gem.require_paths = ['lib']
end