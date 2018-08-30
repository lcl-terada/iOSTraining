import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        let pushButtonA = UIButton()
        pushButtonA.setTitle("ButtonA", for: .normal)
        pushButtonA.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25.0)
        pushButtonA.setTitleColor(UIColor.blue, for: UIControlState.normal)
        pushButtonA.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        pushButtonA.tag = 1
        view.addSubview(pushButtonA)
        pushButtonA.translatesAutoresizingMaskIntoConstraints = false
        pushButtonA.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pushButtonA.topAnchor.constraint(equalTo: view.topAnchor, constant: 100.0).isActive = true
        pushButtonA.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
        
        let pushButtonB = UIButton()
        pushButtonB.setTitle("ButtonB", for: .normal)
        pushButtonB.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25.0)
        pushButtonB.setTitleColor(UIColor.blue, for: UIControlState.normal)
        pushButtonB.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        pushButtonB.tag = 2
        view.addSubview(pushButtonB)
        pushButtonB.translatesAutoresizingMaskIntoConstraints = false
        pushButtonB.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pushButtonB.topAnchor.constraint(equalTo: pushButtonA.topAnchor, constant: 100.0).isActive = true
        pushButtonB.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
        
        let pushButtonC = UIButton()
        pushButtonC.setTitle("ButtonC", for: .normal)
        pushButtonC.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25.0)
        pushButtonC.setTitleColor(UIColor.blue, for: UIControlState.normal)
        pushButtonC.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        pushButtonC.tag = 3
        view.addSubview(pushButtonC)
        pushButtonC.translatesAutoresizingMaskIntoConstraints = false
        pushButtonC.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pushButtonC.topAnchor.constraint(equalTo: pushButtonB.topAnchor, constant: 100.0).isActive = true
        pushButtonC.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func buttonTapped(_ sender: UIButton) {
        let buttonString: String
        switch sender.tag {
        case 1:
            buttonString = "A"
            print(sender.tag)
        case 2:
            buttonString = "B"
            print(sender.tag)
        case 3:
            buttonString = "C"
            print(sender.tag)
        default:
            return
        }
        
        let viewController = NextViewController()
        viewController.buttonString = buttonString
        navigationController?.pushViewController(viewController, animated: true)
    }
}
