include SugarCube::Adjust

class AppDelegate
  attr_reader :samples
  
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    return true if RUBYMOTION_ENV == 'test' and !MotionBlow.dump?
        
  	@window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = (nav = ContainerController.new)
    @window.rootViewController.wantsFullScreenLayout = true
    
    @window.makeKeyAndVisible

    nav.setNavigationBarHidden( true, animated:true )

    setup_appearance

    @samples = %w(A B C D E)
        
    true
  end
  
  def alert( message )
    UIAlertView.alert( message )
  end
  
  private
    
  def setup_appearance
    UILabel.appearance.setBackgroundColor( UIColor.clearColor )
  end  
end