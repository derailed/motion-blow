unless defined?(Motion::Project::Config)
  raise "motion-bowels must be required within a RubyMotion project Rakefile."
end

MB_LIB_DIR = File.dirname(__FILE__)
Motion::Project::App.setup do |app|
  Dir.glob(File.join( MB_LIB_DIR, %w(motion-bowels ** *.rb))).each do |file|
puts "!! LOADING #{file.inspect}"    
    app.files.unshift(file)
  end
  FileUtils.cp( File.join( MB_LIB_DIR, %w(assets dumper.scpt) ), './resources/' )
end

require 'tasks/dump'