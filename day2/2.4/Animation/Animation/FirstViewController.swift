//
//  ViewController.swift
//  Animation
//
//  Created by Kunio Terada on 2018/08/30.
//  Copyright © 2018年 Kunio Terada. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    let imageView1 = UIImageView()
    let imageView2 = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        
        imageView1.image = UIImage(named: "vinyl_record1")
        view.addSubview(imageView1)
        imageView1.translatesAutoresizingMaskIntoConstraints = false
        imageView1.topAnchor.constraint(equalTo: view.topAnchor, constant: 200.0).isActive = true
        imageView1.widthAnchor.constraint(equalToConstant: 150.0).isActive = true
        imageView1.heightAnchor.constraint(equalToConstant: 150.0).isActive = true
        imageView1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        imageView2.image = UIImage(named: "vinyl_record2")
        view.addSubview(imageView2)
        imageView2.translatesAutoresizingMaskIntoConstraints = false
        imageView2.topAnchor.constraint(equalTo: view.topAnchor, constant: 400.0).isActive = true
        imageView2.widthAnchor.constraint(equalToConstant: 150.0).isActive = true
        imageView2.heightAnchor.constraint(equalToConstant: 150.0).isActive = true
        imageView2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        imageView2.isHidden = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.transition(with: view, duration: 4, options: .transitionCurlUp, animations: {
            self.imageView1.isHidden = true
            self.imageView2.isHidden = false
        },completion: {(finished: Bool) -> Void in
            self.imageView1.isHidden = false
            self.imageView2.isHidden = true
        })
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
}


