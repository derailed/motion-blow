module MotionBowels  
  module_function 
  
  def dump
    f = File.join( App.config.project_dir, %w[resources simulator.scpt] )
puts ">>>>> RUNNING #{f}"    
    %x[osascript #{f}]
  end
end
