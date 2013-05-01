unless defined?(Motion::Project::Config)
  raise "motion-blow must be required within a RubyMotion project Rakefile."
end

MB_LIB_DIR = File.dirname(__FILE__)
Motion::Project::App.setup do |app|
  Dir.glob(File.join( MB_LIB_DIR, %w(motion-blow ** *.rb))).each do |file|
    app.files.unshift(file)
  end
end

require 'tasks/dump'