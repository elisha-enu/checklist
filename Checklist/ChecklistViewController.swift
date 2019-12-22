//
//  ViewController.swift
//  Checklist
//
//  Created by Elisha Limanu on 21/12/19.
//  Copyright © 2019 Elisha Limanu. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController  {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    // to decide how many cells will display
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    // provide the actual cell
    // this method is called everytime a table view needs a cell
    // in this method we configure cell to show certain kinds of data, whatever data we want
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // dont miss spele of identifier, the table view won;t be able to find the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        return cell
    }

}

