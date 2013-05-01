class ContainerController < UINavigationController
  def init
    super.tap do
      controller = A.new
      controller.navigationItem.title = "A"
      self.setViewControllers( [controller], animated: false )
    end
  end
end