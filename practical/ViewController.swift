//
//  ViewController.swift
//  practical
//
//  Created by Avadh Mewada on 6/18/20.
//  Copyright © 2020 Avadh Mewada. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    var someArr = [String]()
    var NewArr = [Int]()
    var selectedItems = [NSIndexPath]()
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.allowsSelection = true

        for i in 0 ... 1000 {
            NewArr.append(i * 50)
        }
        someArr = NewArr.map  { Optional(String($0))! }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
           return 50
       }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! Cell
        cell.numbersLabel.text = self.someArr[indexPath.row]
        let isRowChecked = selectedItems.contains(indexPath as NSIndexPath)
        if(isRowChecked == true)
        {
            cell.checkBox.isChecked = true
            cell.checkBox.buttonClicked(sender: cell.checkBox)
        }else{
            cell.checkBox.isChecked = false
            cell.checkBox.buttonClicked(sender: cell.checkBox)
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath as IndexPath) as! Cell
        
        
        if cell.checkBox.isChecked == false {
            cell.checkBox.buttonClicked(sender: cell.checkBox)
        }
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath as IndexPath) as! Cell
        cell.checkBox.isChecked = false
        
    }
}

