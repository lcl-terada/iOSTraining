import UIKit

class ButtonTapView: UIViewController {
    
    let nextButton = UIButton(type: UIButtonType.system)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nextButton)
        nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 150.0).isActive = true
        nextButton.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
        
        nextButton.setTitle("Tap!", for: .normal)
        nextButton.backgroundColor = UIColor.orange
        nextButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30.0)
        nextButton.setTitleColor(UIColor.white, for: UIControlState.normal)
        nextButton.addTarget(self, action: #selector(ButtonTapView.goNext(_:)), for: .touchUpInside)
        view.backgroundColor = UIColor.white
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func goNext(_ sender: UIButton) {
        let nextvc = NextViewController()
        nextvc.view.backgroundColor = UIColor.orange
        self.present(nextvc, animated: true, completion:  nil)
    }
}
