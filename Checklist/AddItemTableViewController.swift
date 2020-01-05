//
//  AddItemTableViewController.swift
//  Checklist
//
//  Created by Elisha Limanu on 04/01/20.
//  Copyright © 2020 Elisha Limanu. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func cancel(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func done(_ sender: Any) {
        navigationController?.popViewController(animated: true)
        print("Content of the field typed is \(textField.text)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
//        textField.delegate = self -> comment because you can link the textField to the 'add item table view controller - outlets'
    }
    
    override func viewWillAppear(_ animated: Bool) {
        textField.becomeFirstResponder()
    }
    
    override func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }
}


// extensio are a great way to group all your delegate method
extension AddItemTableViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
