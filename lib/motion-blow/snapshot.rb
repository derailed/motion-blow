module MotionBlow
  module_function 
  
  def snap!
    f = File.join( File.dirname(__FILE__), %w[.. assets dumper.scpt] )
    %x[osascript #{f}]
  end
end
