import UIKit

class TaskFour: UIView, UITextFieldDelegate{
    
    let label = UILabel()
    let button = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        addSubview(label)
        addSubview(button)
        
        label.font = UIFont.boldSystemFont(ofSize: 23.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        label.topAnchor.constraint(equalTo: topAnchor, constant: 100.0).isActive = true
        label.text = "Swift"
        label.numberOfLines = 0
        label.sizeToFit()
        
        button.backgroundColor = UIColor.blue
        button.titleLabel?.font = UIFont.systemFont(ofSize: 23)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 150).isActive = true
        button.topAnchor.constraint(equalTo: topAnchor, constant: 200).isActive = true
        button.setTitle("Tap", for: UIControlState.normal)
        button.sizeToFit()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

