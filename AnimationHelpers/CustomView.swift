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
        self.backgroundColor = .blue
        
        UIView.animateKeyframes(withDuration: 4.0, delay: 0.0, options: [], animations: {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.5, animations: {
                self.backgroundColor = .red
            })
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.5, animations: {
                self.backgroundColor = .purple
            })
        }, completion: nil)
    }
}
