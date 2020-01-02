//
//  ViewController.swift
//  Checklist
//
//  Created by Elisha Limanu on 21/12/19.
//  Copyright © 2019 Elisha Limanu. All rights reserved.
//

import UIKit

// view controller is a datasource
// you can ask about the data anytime you feel like it

// Table view contains 2 protocol method.
// UiTableViewDataSource -> what will the table display -> where we provide data
// UITableViewDelegate -> how will the table behave? when taps the row, show / unshow checklist -> where we interact with the table view

class ChecklistViewController: UITableViewController  {
    var todoList: TodoList
    
    @IBAction func addItem(_ sender: Any) {
        print("add item")
    }
    // this is called when this view controller is initialized from a story board
    required init?(coder aDecoder: NSCoder) {
        todoList = TodoList()
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    // to decide how many cells will display
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.todos.count
    }
    
    // provide the actual cell
    // this method is called everytime a table view needs a cell
    // in this method we configure cell to show certain kinds of data, whatever data we want
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // dont miss spele of identifier, the table view won;t be able to find the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        if let label = cell.viewWithTag(1000) as? UILabel {
            label.text = todoList.todos[indexPath.row].text
        }
        
        let item = todoList.todos[indexPath.row]
        configureText(for: cell, with: item)
        configureCheckmark(for: cell, with: item)
        
        return cell
    }
    
    // for uncheck the task
    // because its a tableViewController, we need to override
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            let item = todoList.todos[indexPath.row]
            configureCheckmark(for: cell, with: item)
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    func configureText(for cell: UITableViewCell, with item: ChecklistItem) {
        if let label = cell.viewWithTag(1000) as? UILabel {
            label.text = item.text
        }
    }
    
    func configureCheckmark(for cell: UITableViewCell, with item: ChecklistItem) {
        if item.checked {
           cell.accessoryType = .checkmark
        }
        else {
           cell.accessoryType = .none
        }
        item.toggleChecked()
    }

}

