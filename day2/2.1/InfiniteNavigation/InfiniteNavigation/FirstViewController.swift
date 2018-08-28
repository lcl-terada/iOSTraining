import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pushButton = UIButton()
        
        pushButton.setTitle("Push", for: .normal)
        pushButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20.0)
        pushButton.setTitleColor(UIColor.blue, for: UIControlState.normal)
        pushButton.addTarget(self, action: #selector(pushButtonTapped), for: .touchUpInside)
        view.backgroundColor = UIColor.white
        
        view.addSubview(pushButton)
        pushButton.translatesAutoresizingMaskIntoConstraints = false
        pushButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pushButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        pushButton.heightAnchor.constraint(equalToConstant: 150.0).isActive = true
        pushButton.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
        
    }
    
    @objc func pushButtonTapped(_ sender: UIButton) {
        let viewController = FirstViewController()
        navigationController?.pushViewController(viewController, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
