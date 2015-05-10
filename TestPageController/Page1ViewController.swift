 

import UIKit

@objc(Page1ViewController)
class Page1ViewController: UIViewController {
  
  @IBOutlet weak var scrollView: UIScrollView!
  @IBOutlet weak var contentView: UIView!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    scrollView.setTranslatesAutoresizingMaskIntoConstraints(true)
    
    let contentView = UIView()
    contentView.setTranslatesAutoresizingMaskIntoConstraints(true)
    contentView.backgroundColor = UIColor.purpleColor()
    contentView.frame = CGRectMake(10, 0, 150, 1000)
    
    let lab1 = UILabel()
    lab1.text = "Lab1"
    
    let lab2 = UILabel()
    lab2.text = "Lab2"
    
    contentView.addSubview(lab1)
    contentView.addSubview(lab2)

    
    lab1.snp_makeConstraints { (make) -> Void in
      make.left.equalTo(contentView)
      make.top.equalTo(contentView)
    }
    
    
    lab2.snp_makeConstraints { (make) -> Void in
      make.left.equalTo(contentView)
      make.top.equalTo(contentView).offset(64)
    }
    
    
    
    scrollView.contentSize = contentView.frame.size
    scrollView.addSubview(contentView)
    
    
    
    // Do any additional setup after loading the view.
  }
  
  
  override func viewWillAppear(animated: Bool) {
    
  
    
  }
  
  
}
