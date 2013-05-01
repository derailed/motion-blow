module MotionBowels  
  module_function 
  
  def dump
    f = File.join( File.dirname(__FILE__), %w[.. assets dumper.scpt] )
    raise "Hoy! Unable to find `osascript exec in PATH" if `which osascript`.empty?
    %x[osascript #{f}]
  end
end
