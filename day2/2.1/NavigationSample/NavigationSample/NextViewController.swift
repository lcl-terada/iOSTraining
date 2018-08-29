import UIKit

class NextViewController: UIViewController {
    
    @objc weak var label: UILabel!
    var buttonString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        let buttonTapped = UILabel()
        buttonTapped.text = "Button Tapped"
        buttonTapped.font = UIFont.boldSystemFont(ofSize: 25.0)
        view.addSubview(buttonTapped)
        buttonTapped.translatesAutoresizingMaskIntoConstraints = false
        buttonTapped.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        buttonTapped.topAnchor.constraint(equalTo: view.topAnchor, constant: 100.0).isActive = true
        buttonTapped.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
