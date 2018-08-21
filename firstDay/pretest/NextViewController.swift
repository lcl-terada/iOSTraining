//
//  NextViewController.swift
//  pretest
//
//  Created by Kunio Terada on 2018/08/21.
//  Copyright © 2018年 Kunio Terada. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    
    let backButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(backButton)
        backButton.setTitle("BACK", for: .normal)
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        backButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 150.0).isActive = true
        backButton.widthAnchor.constraint(equalToConstant: 200.0).isActive = true
        backButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30.0)
        backButton.setTitleColor(UIColor.red, for: UIControlState.normal)
        backButton.backgroundColor = UIColor.white
        backButton.addTarget(self, action: #selector(NextViewController.back(_:)), for: .touchUpInside)
        backButton.sizeToFit()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func back(_ sender: UIButton){
        self.dismiss(animated: true, completion: nil)
    }
}
