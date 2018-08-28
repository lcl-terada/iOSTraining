import UIKit

//delegateのためのプロトコルを定義
protocol FirstViewControllerDelegate: class {
    //ここにDelegateメソッドの定義
    func nextViewController(_ nextViewController: NextViewController, backButton button: UIButton)
}

class NextViewController: UIViewController {
    //NextViewControllerDelegateに準拠していたらどんなクラスでもOK
    weak var delegate: FirstViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.gray
        
        let backButton = UIButton()
        backButton.setTitle("close modal", for: .normal)
        backButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30.0)
        backButton.setTitleColor(UIColor.gray, for: UIControlState.normal)
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        backButton.backgroundColor = UIColor.white
        view.addSubview(backButton)
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        backButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        backButton.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 150.0).isActive = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //NextViewControllerのbackButtonTappedが呼ばれる
    @objc func backButtonTapped(_ sender: UIButton){
        //delegateを介してモーダルを消す
        delegate?.nextViewController(self, backButton: sender)
    }
}
