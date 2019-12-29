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
    
    var row_0_item: ChecklistItem
    var row_1_item: ChecklistItem
    var row_2_item: ChecklistItem
    var row_3_item: ChecklistItem
    var row_4_item: ChecklistItem
    
    
    // this is called when this view controller is initialized from a story board
    required init?(coder aDecoder: NSCoder) {
        row_0_item = ChecklistItem()
        row_1_item = ChecklistItem()
        row_2_item = ChecklistItem()
        row_3_item = ChecklistItem()
        row_4_item = ChecklistItem()
        
        row_0_item.text = "Wathing korean drama"
        row_1_item.text = "Wash hair"
        row_2_item.text = "Eat something nice"
        row_3_item.text = "Do laundry"
        row_4_item.text = "Go to work"
        
        super.init(coder: aDecoder)
         
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // to decide how many cells will display
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    // provide the actual cell
    // this method is called everytime a table view needs a cell
    // in this method we configure cell to show certain kinds of data, whatever data we want
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // dont miss spele of identifier, the table view won;t be able to find the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        if let label = cell.viewWithTag(1000) as? UILabel {
            if indexPath.row == 0 {
                label.text = row_0_item.text
            } else if indexPath.row == 1 {
                label.text = row_1_item.text
            } else if indexPath.row == 2 {
                label.text = row_2_item.text
            } else if indexPath.row == 3 {
                label.text = row_3_item.text
            } else if indexPath.row == 4 {
                label.text = row_4_item.text
            }
        }
        
        configureCheckmark(for: cell, indexPath: indexPath)
        return cell
    }
    
    // for uncheck the task
    // because its a tableViewController, we need to override
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            configureCheckmark(for: cell, indexPath: indexPath)
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    func configureCheckmark(for cell: UITableViewCell, indexPath: IndexPath) {
        if indexPath.row == 0 {
           if(row_0_item.checked) {
               cell.accessoryType = .checkmark
           }
           else {
               cell.accessoryType = .none
           }
           row_0_item.checked = !row_0_item.checked
        } else if indexPath.row == 1 {
            if(row_1_item.checked) {
                cell.accessoryType = .checkmark
            }
            else {
                cell.accessoryType = .none
            }
            row_1_item.checked = !row_1_item.checked
        } else if indexPath.row == 2 {
            if(row_2_item.checked) {
                cell.accessoryType = .checkmark
            }
            else {
                cell.accessoryType = .none
            }
            row_2_item.checked = !row_2_item.checked
        } else if indexPath.row == 3 {
            if(row_3_item.checked) {
                cell.accessoryType = .checkmark
            }
            else {
                cell.accessoryType = .none
            }
            row_3_item.checked = !row_3_item.checked
        } else if indexPath.row == 4 {
            if(row_4_item.checked) {
                cell.accessoryType = .checkmark
            }
            else {
                cell.accessoryType = .none
            }
            row_4_item.checked = !row_4_item.checked
        }
    }

}

