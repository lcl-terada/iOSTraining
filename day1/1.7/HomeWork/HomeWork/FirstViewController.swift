import UIKit

class FirstViewController: UIViewController {
    
    //viewDidAppearが呼ばれたかどうかのプロパティ
    private var isFirstViewDidAppear = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nextButton = UIButton()
        view.backgroundColor = UIColor.white
        nextButton.setTitle("present modal", for: .normal)
        nextButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30.0)
        nextButton.setTitleColor(UIColor.white, for: UIControlState.normal)
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        nextButton.backgroundColor = UIColor.gray
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
    
    override func viewDidAppear(_ animated: Bool) {
        //初回はif文に入って処理が終わる
        if isFirstViewDidAppear {
            isFirstViewDidAppear =  false
            return
        }
        showNextViewController()
    }
    
    //FirstViewControllerのnextButtonTappedが呼ばれる
    @objc func nextButtonTapped(_ sender: UIButton){
        showNextViewController()
    }
    
    private func showNextViewController() {
        let NextVC = NextViewController()
        //NextViewControllerのdelegateを自分にセット
        NextVC.delegate = self
        //present(viewControllerToPresent: UIViewController, animated: Bool, completion: (() -> Void)?)
        present(NextVC, animated: true, completion: nil)
        }
    }

//extensionでクラスを拡張
extension FirstViewController: FirstViewControllerDelegate {
    //NextViewControllerのdelegateメソッドを実装
    func nextViewController(_ nextViewController: NextViewController, backButton button: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
