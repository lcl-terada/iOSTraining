//
//  dismissViewController.swift
//  HomeWork
//
//  Created by Kunio Terada on 2018/08/27.
//  Copyright © 2018年 Kunio Terada. All rights reserved.
//

import UIKit

protocol DissmissViewControllerDelegate: class {
    func dissmissViewController(_ dissViewController: DissmissViewController, backButton button: UIButton)
}

class DissmissViewController: UIViewController {

    weak var delegate: DissmissViewControllerDelegate? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let DissmissButton = UIButton()
        
        DissmissButton.setTitle("close modal", for: .normal)
        DissmissButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30.0)
        DissmissButton.setTitleColor(UIColor.gray, for: UIControlState.normal)
        DissmissButton.addTarget(self, action: #selector(DissmissButtonTapped), for: .touchUpInside)
        DissmissButton.backgroundColor = UIColor.white
        view.backgroundColor = UIColor.red
        
        view.addSubview(DissmissButton)
        DissmissButton.translatesAutoresizingMaskIntoConstraints = false
        DissmissButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        DissmissButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        DissmissButton.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
        DissmissButton.heightAnchor.constraint(equalToConstant: 150.0).isActive = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @objc func DissmissButtonTapped(_ sender: UIButton){
        delegate?.dissmissViewController(self, backButton: sender)
        dismiss(animated: true, completion: nil)
    }
}

