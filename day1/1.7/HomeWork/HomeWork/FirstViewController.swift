import UIKit

//NextViewControllerDelegateが準拠するメソッド
//こうすることでプロトコルを採用したDelegateパターンを使える
class FirstViewController: UIViewController, NextViewControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nextButton = UIButton()
        
        nextButton.setTitle("Tap!", for: .normal)
        nextButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30.0)
        nextButton.setTitleColor(UIColor.white, for: UIControlState.normal)
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        nextButton.backgroundColor = UIColor.gray
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
    
    //FirstViewControllerのnextButtonTappedが呼ばれる
    @objc func nextButtonTapped(_ sender: UIButton){
        //NextViewControllerインスタンスを生成
        let nvc = NextViewController()
        //delegateプロパティにFirstViewControllerを代入
        nvc.delegate = FirstViewController()
        //present(_:animated:completion:) でNextViewControllerを表示
        present(nvc, animated: true, completion: nil)
    }
    
    func nextViewController(_ sampleViewController: NextViewController, backButton button: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
