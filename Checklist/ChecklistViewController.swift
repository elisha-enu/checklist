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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // to decide how many cells will display
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1000
    }
    
    // provide the actual cell
    // this method is called everytime a table view needs a cell
    // in this method we configure cell to show certain kinds of data, whatever data we want
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // dont miss spele of identifier, the table view won;t be able to find the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        
        if let label = cell.viewWithTag(1000) as? UILabel {
            if indexPath.row % 5 == 0 {
                label.text = "Take a jog"
            } else if indexPath.row % 4 == 0 {
                label.text = "Watch a movie"
            } else if indexPath.row % 3 == 0 {
                label.text = "Code an app"
            } else if indexPath.row % 2 == 0 {
                label.text = "Walk the dog"
            } else if indexPath.row % 1 == 0 {
                label.text = "Study design patterns"
            }
        }
        
        return cell
    }

}

