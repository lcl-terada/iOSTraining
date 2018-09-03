import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.lightGray
        
        let label = UILabel()
        label.text = "Hello World!"
        label.font = UIFont.systemFont(ofSize: 25.0)
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 70.0).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        let button = UIButton()
        button.setTitle("button", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25.0)
        button.setTitleColor(UIColor.blue, for: UIControlState.normal)
        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20.0).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        let textField = UITextField()
        textField.placeholder = "入力してください"
        textField.backgroundColor = UIColor.white
        textField.borderStyle = .roundedRect
        view.addSubview(textField)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 20.0).isActive = true
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "vinyl_record")
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 20.0).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 150.0).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 150.0).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        let textView = UITextView()
        textView.text = "飛行機の音ではなかった。\n耳の後ろ側を飛んでいた虫の羽音だった。蝿よりも小さな虫は、目の前をしばらく旋回して暗い隅へと見えなくなった。\n\n村上春樹/『限りなく透明に近いブルー』"
        textView.font = UIFont.systemFont(ofSize: 20.0)
        textView.layer.borderColor = UIColor.lightGray.cgColor
        textView.layer.borderWidth = 1
        textView.isEditable = true
        view.addSubview(textView)
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 30.0).isActive = true
        textView.widthAnchor.constraint(equalToConstant: view.frame.width - 20).isActive = true
        textView.heightAnchor.constraint(equalToConstant: 170.0).isActive = true
        textView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
