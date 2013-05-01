module MotionBlow
  module_function 
  
  def dump?
    ENV['MOTION_BLOW_ENV'] == 'on'
  end
  
  def snap!
    run( 'dumper.scpt' )
  end
  
  def flush!
    run( 'sim_quit.scpt' )
  end
  
  private
  
  def run( script_file )
    %x[osascript #{File.join( File.dirname(__FILE__), %W[.. assets #{script_file}] )}]
  end      
end