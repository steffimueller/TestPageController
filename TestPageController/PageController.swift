

import UIKit

class PageController: UIPageViewController, UIPageViewControllerDataSource {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  //  self.edgesForExtendedLayout = UIRectEdge.None
    
    setViewControllers([Page1ViewController()], direction: UIPageViewControllerNavigationDirection.Forward, animated: true, completion: nil)
    
    self.dataSource = self
  }
  
  
  // create an image filled with a defined color
  func imageWithColor(color: UIColor) -> UIImage {
    let rect:CGRect = CGRectMake(0, 0, 1, 1)
    UIGraphicsBeginImageContextWithOptions(rect.size, false, 0)
    color.setFill()
    UIRectFill(rect)
    let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return image
  }
  
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    
    let backImage = imageWithColor(UIColor(red: 120, green: 0, blue: 0, alpha: 0.5))
    
    let navBar = self.navigationController!.navigationBar
    
   // navBar.setBackgroundImage(backImage, forBarMetrics: UIBarMetrics.Default)

    
  }
  
  
  // MARK: UIPageViewControllerDataSource
  
  func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
    
    return Page1ViewController()
  }
  
  
  func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
    
    return Page2ViewController()
  }
  
  
  
  
}
