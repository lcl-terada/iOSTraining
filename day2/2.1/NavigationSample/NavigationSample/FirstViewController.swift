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
        view.addSubview(pushButtonA)
        pushButtonA.translatesAutoresizingMaskIntoConstraints = false
        pushButtonA.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pushButtonA.topAnchor.constraint(equalTo: view.topAnchor, constant: 100.0).isActive = true
        pushButtonA.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
        pushButtonA.tag = 1
        
        let pushButtonB = UIButton()
        pushButtonB.setTitle("ButtonB", for: .normal)
        pushButtonB.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25.0)
        pushButtonB.setTitleColor(UIColor.blue, for: UIControlState.normal)
        pushButtonB.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(pushButtonB)
        pushButtonB.translatesAutoresizingMaskIntoConstraints = false
        pushButtonB.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pushButtonB.topAnchor.constraint(equalTo: pushButtonA.topAnchor, constant: 100.0).isActive = true
        pushButtonB.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
        pushButtonB.tag = 2

        let pushButtonC = UIButton()
        pushButtonC.setTitle("ButtonC", for: .normal)
        pushButtonC.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25.0)
        pushButtonC.setTitleColor(UIColor.blue, for: UIControlState.normal)
        pushButtonC.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(pushButtonC)
        pushButtonC.translatesAutoresizingMaskIntoConstraints = false
        pushButtonC.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        pushButtonC.topAnchor.constraint(equalTo: pushButtonB.topAnchor, constant: 100.0).isActive = true
        pushButtonC.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
        pushButtonC.tag = 3
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    enum actionTag: Int {
        case pushButtonA = 0
        case pushButtonB = 1
        case pushButtonC = 2
    }

    @objc func buttonA(_ sender: UIButton) {
        
    }
    
    @objc func buttonB(_ sender: UIButton) {
        
    }
    
    @objc func buttonC(_ sender: UIButton) {
        
    }
    
    
    @objc func buttonTapped(_ sender: UIButton) {
        let buttonString: String
        switch sender {
        case buttonA:
            buttonString = "A"
            print(sender.tag)
        case buttonB:
            buttonString = "B"
            print(sender.tag)
        case buttonC:
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
