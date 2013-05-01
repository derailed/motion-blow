module MotionBlow
  module_function 
  
  def snap!
puts "SNAP!"    
    run( 'dumper.scpt' )
  end
  
  def flush!
    run( 'sim_quit.scpt' )
  end
  
  private
  
  def run( script_file )
    %x[osascript #{File.join( File.dirname(__FILE__), %w[.. assets script_file] )}]
  end    
end
