import UIKit

class NextViewController: UIViewController {
    
    let backButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(backButton)
        backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        backButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 150.0).isActive = true
        backButton.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
        
        backButton.setTitle("BACK", for: .normal)
        backButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30.0)
        backButton.setTitleColor(UIColor.red, for: UIControlState.normal)
        backButton.backgroundColor = UIColor.white
        backButton.addTarget(self, action: #selector(NextViewController.back(_:)), for: .touchUpInside)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func back(_ sender: UIButton){
        self.dismiss(animated: true, completion: nil)
    }
}
