//
//  ViewController.swift
//  Todoey
//
//  Created by Co Co on 7/10/18.
//  Copyright © 2018 Alvin Moradi. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Find Mike","Buy Eggs","Destroy Demogorgon",""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "toDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    // Tabelview is telling the delegate (this class) that row was selected at:
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath.row, animated: true)
    }

}

