import UIKit

//NextViewControllerDelegateがプロトコル名、nextViewControllerがこのプロトコルに準拠したクラスが実装するメソッド
protocol NextViewControllerDelegate: class {
    func nextViewController(_ sampleViewController: NextViewController, backButton button: UIButton)
}

class NextViewController: UIViewController {

    //NextViewControllerDelegateに準拠していたらどんなクラスでもOK
    weak var delegate: NextViewControllerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backButton = UIButton()
        
        backButton.setTitle("BACK", for: .normal)
        backButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30.0)
        backButton.setTitleColor(UIColor.gray, for: UIControlState.normal)
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        backButton.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.gray
        
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
    
    //NextViewControllerのボタンをタップするとbackButtonTappedが呼ばれる
    @objc func backButtonTapped(_ sender: UIButton){
        //NextViewControllerDelegateに準拠しているのでnextViewControllerがあるからdelegateプロパティを呼ぶ
        delegate?.nextViewController(self, backButton: sender)
//        dismiss(animated: true, completion: nil)
    }
}
