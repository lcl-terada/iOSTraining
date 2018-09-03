//
//  CustomTableViewHeaderFooterView.swift
//  UITableView
//
//  Created by Kunio Terada on 2018/09/03.
//  Copyright © 2018年 Kunio Terada. All rights reserved.
//

import UIKit

class CustomTableViewHeaderFooterView: UITableViewHeaderFooterView() {
    // 適当にレイアウト処理を施しているであろうLabel
    private let label: UILabel
    
    func setText(_ text: String?) {
        self.label.text = text
    }
    
}
