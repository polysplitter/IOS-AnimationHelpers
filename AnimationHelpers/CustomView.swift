import UIKit

class CustomView: UIView {
    let otherView = CustomButton(type: .system)
    
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
        otherView.setTitle("Foo", for: .normal)
        otherView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        otherView.backgroundColor = .purple
        
        self.backgroundColor = .blue
        
//        UIView.animate(withDuration: 5.0) {
//            self.backgroundColor = .red
//            self.otherView.center = CGPoint(x: 100, y: 100)
//        }
        
//        UIView.animate(withDuration: 1.0, animations: {
//            self.backgroundColor = .red
//            self.otherView.center = CGPoint(x: 100, y: 100)
//        }) { res in
//            puts("hello")
//            self.otherView.center = CGPoint(x: 50, y: 50)
//        }
        
//        UIView.animate(withDuration: 5.0, delay: 0.0, options: [.curveEaseOut, .allowUserInteraction], animations: {
//            self.otherView.center = CGPoint(x: 200, y: 50)
//        }, completion: nil)
//
//        let deadlineTime = DispatchTime.now() + .seconds(3)
//        DispatchQueue.main.asyncAfter(deadline: deadlineTime) {
//            UIView.animate(withDuration: 5.0, delay: 0.0, options: [.curveEaseOut, .allowUserInteraction], animations: {
//                self.otherView.center = CGPoint(x: 50, y: 200)
//            }, completion: nil)
//        }
        
        UIView.animate(withDuration: 4.0) {
            var transform = CGAffineTransform.identity
//            transform = CGAffineTransform(translationX: 100, y: 0)
//                                          .rotated(by: CGFloat(Double.pi)/4)
//                                          .scaledBy(x: 2, y: 0.5)
            transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi)/4)
                                          .translatedBy(x: 100, y: 0)
                                          .scaledBy(x: 2, y: 0.5)
            self.otherView.transform = transform
        }

    }
}

class CustomButton: UIButton {
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let newPoint = self.layer.presentation()?.convert(point, from: layer)
        
        return super.hitTest(newPoint!, with: event)
    }
}
