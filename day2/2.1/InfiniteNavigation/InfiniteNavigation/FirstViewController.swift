import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        let pushButton = UIButton()
        pushButton.setTitle("Push", for: .normal)
        pushButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20.0)
        pushButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
        pushButton.addTarget(self, action: #selector(pushButtonTapped), for: .touchUpInside)
        view.addSubview(pushButton)
        pushButton.translatesAutoresizingMaskIntoConstraints = false
        pushButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pushButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        pushButton.heightAnchor.constraint(equalToConstant: 150.0).isActive = true
        pushButton.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
        
        let string: String
        if let count = navigationController?.viewControllers.count {
            string = "\(count)"
        } else {
            string = ""
        }
        title = string
    }
    
    @objc func pushButtonTapped(_ sender: UIButton) {
        let viewController = FirstViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
