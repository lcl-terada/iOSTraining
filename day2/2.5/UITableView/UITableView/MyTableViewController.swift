//
//  MyTableViewController.swift
//  UITableView
//
//  Created by Kunio Terada on 2018/09/03.
//  Copyright © 2018年 Kunio Terada. All rights reserved.
//

//import UIKit
//
//class MyTableViewController: NSObject, UITableViewDelegate, UITableViewDataSource {
//    private let items = ["a", "b", "c"]
//    
//    //挿入したいデータ(TableViewCell)を1行ずつ生成する
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let newCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        newCell.textLabel?.text = items[indexPath.row]
//        return newCell
//    }
//    
//    //挿入するデータ数を返す
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return items.count
//    }
//}
