//
//  AddItemTableViewController.swift
//  Checklist
//
//  Created by Elisha Limanu on 04/01/20.
//  Copyright © 2020 Elisha Limanu. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {

    
    @IBAction func cancel(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func done(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
    }
}
