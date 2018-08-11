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
        
        UIView.animate(withDuration: 1) {
            UIView.setAnimationRepeatCount(Float.infinity)
            UIView.setAnimationRepeatAutoreverses(true)
            
            self.otherView.center = CGPoint(x: 100, y: 100)
        }
    }
}
