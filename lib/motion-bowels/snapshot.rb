module MotionBowels  
  def dump
    f = File.join( App.config.project_dir, %w[resources simulator.scpt] )
    %x[osascript #{f}]
  end
end
