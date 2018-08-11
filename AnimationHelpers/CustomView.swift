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
        
        self.otherView.translatesAutoresizingMaskIntoConstraints = false
        let constrants = [
            NSLayoutConstraint(item: self.otherView, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: self.otherView, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: self.otherView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100),
            NSLayoutConstraint(item: self.otherView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100),
        ]
        
        for c in constrants { c.isActive = true }
        
        DispatchQueue.main.async {
            for c in constrants { c.isActive = false }
            
            let constrantsTwo = [
                NSLayoutConstraint(item: self.otherView, attribute: .left, relatedBy: .equal, toItem: self, attribute: .left, multiplier: 1, constant: 100),
                NSLayoutConstraint(item: self.otherView, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1, constant: 100),
                NSLayoutConstraint(item: self.otherView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 200),
                NSLayoutConstraint(item: self.otherView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 200),
                ]
            
            for c in constrantsTwo { c.isActive = true }
            
            UIView.animate(withDuration: 1.0, animations: {
                self.layoutIfNeeded()
            })
        }
    }
}
