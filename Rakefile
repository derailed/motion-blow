$:.unshift('/Library/RubyMotion/lib')
require 'motion/project'
require './lib/motion-bowels'

require 'bundler'
Bundler.require
Bundler::GemHelper.install_tasks

Motion::Project::App.setup do |app|
  app.name = 'Bowels!'
  
  app.development do
    app.codesign_certificate  = ENV['dev_mb_certificate']
    app.provisioning_profile  = ENV['dev_mb_profile']
  end  
end