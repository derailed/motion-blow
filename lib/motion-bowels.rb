unless defined?(Motion::Project::Config)
  raise "motion-bowels must be required within a RubyMotion project Rakefile."
end

LIB_DIR = File.dirname(__FILE__)
Motion::Project::App.setup do |app|
  Dir.glob(File.join( LIB_DIR, %w(motion-bowels ** *.rb))).each do |file|
    app.files.unshift(file)
  end
  FileUtils.cp( File.join( LIB_DIR, %w(assets dumper.scpt) ), './resources/' )
end