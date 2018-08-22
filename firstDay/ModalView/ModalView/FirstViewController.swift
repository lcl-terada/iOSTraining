import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nextButton = UIButton()
        
        nextButton.setTitle("Tap!", for: .normal)
        nextButton.backgroundColor = UIColor.orange
        nextButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30.0)
        nextButton.setTitleColor(UIColor.white, for: UIControlState.normal)
        nextButton.addTarget(self, action: #selector(FirstViewController.goNext(_:)), for: .touchUpInside)
        view.backgroundColor = UIColor.white
        
        view.addSubview(nextButton)
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 150.0).isActive = true
        nextButton.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func goNext(_ sender: UIButton) {
        let nextvc = NextViewController()
        self.present(nextvc, animated: true, completion:  nil)
    }
}
