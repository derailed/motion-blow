module MotionBlow
  module_function 
  
  def snap!
    run( File.join( File.dirname(__FILE__), %w[.. assets dumper.scpt] ) )
  end
  
  def flush!
    run( File.join( File.dirname(__FILE__), %w[.. assets sim_quit.scpt] ) )
  end
  
  private
  
  def run( script_file )
    %x[osascript #{script_file}]
  end    
end
