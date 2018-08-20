//
//  ViewController.swift
//  Customize
//
//  Created by Kunio Terada on 2018/08/20.
//  Copyright © 2018年 Kunio Terada. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let sampleView = TaskFour(frame: self.view.bounds)
        sampleView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(sampleView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

