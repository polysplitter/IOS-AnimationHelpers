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
    }
}
