namespace 'bowels' do
  desc 'Dumps screen snapshots for all supported devices'  
  task :dump do
    base_dir = File.join( App.config.project_dir, %w(spec snapshot) )
    png_dir  = File.join( base_dir, "pngs" )

    FileUtils.rm_r( png_dir ) if File.exists?( png_dir )
    FileUtils.mkdir_p( png_dir )

    specs_dir = App.config.specs_dir
    App.config.specs_dir = base_dir
    App.config.files += Dir.glob(File.join(specs_dir, 'helpers', '*.rb'))  
  
    target = ENV['target'] || App.config.sdk_version
    retina = ENV['retina'] || %w[3.5 4]
  
    retina.each do |retina|      
      App.config.device_family.each do |family|
        dir_name = App.config.device_family_string( family, target, retina )
puts "*"*100      
puts "Generating screens for device: #{dir_name}"
        ENV['target']        = target
        ENV['device-family'] = family.to_s
        ENV['retina']        = retina

        run = %x[target=#{target};device_family=#{family};retina=#{retina} && rake spec files=spec/snapshot/bowels.rb]
puts "RUN #{run}"      
        # Rake::Task[:spec].invoke
        snapshots = Dir.glob(File.join(ENV['HOME'], 'Desktop', 'iOS Simulator Screen shot *.png' ) )  
        dump_dir = File.join( png_dir, dir_name )
        FileUtils.rm_r dump_dir if File.exists?( dump_dir )
        FileUtils.mkdir_p( dump_dir )
        snapshots.each do |snap|
puts "Snapshot #{snap}"
          FileUtils.mv( snap, dump_dir )
        end
      end  
    end
  end
end