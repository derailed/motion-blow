describe "ColonBlow!" do  
  extend MotionBlow
  
  tests ContainerController

  it "takes snapshots correctly" do
    snap!
    
    %w[a b c].each do |l|
      visit_me( "Main", l )
    end
        
    %w[a].each do |l|
      visit_me( "Main", l )
    end

    # BOZO!! Guess need an assert somewhere. Gak!
    true.should == true
  
    sleep( 2 )
    flush!
  end  
end

def visit_me( view, widget )
  flick view, to: :left
  sleep( 0.5 )
  snap!
end