import UIKit

class File: UIView, UITextFieldDelegate {
    
    let nextButton = UIButton()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        addSubview(nextButton)
        nextButton.setTitle("Tap!", for: .normal)
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.topAnchor.constraint(equalToConstant: 100).isActive = true
        nextButton.backgroundColor = UIColor.red
        nextButton.addTarget(self, action: #selector(ViewController.goNext(_:)), for: .touchUpInside)
        
    }
    
    @objc func goNext(_ sender: UIButton) {
        let nextvc = NextViewController()
        nextvc.view.backgroundColor = UIColor.blue
        self.present(nextvc, animated: true, completion:  nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

