import UIKit

class CustomView: UIView {
    let otherView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        defaultInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        defaultInit()
    }
    
    func defaultInit() {
        self.addSubview(otherView)
        otherView.backgroundColor = .purple
        otherView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        self.backgroundColor = .blue
        
        UIView.animate(withDuration: 2.0, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: [], animations: {
            self.otherView.center = CGPoint(x: 250, y: 50)
        }, completion: nil)
    }
}
