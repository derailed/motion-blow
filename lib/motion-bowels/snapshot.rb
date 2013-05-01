module MotionBowels  
  module_function 
  
  def dump
    f = File.join( File.dirname(__FILE__), %w[.. assets dumper.scpt] )
puts ">>>>> RUNNING #{f}"    
    %x[osascript #{f}]
  end
end
