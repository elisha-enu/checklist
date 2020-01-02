//
//  ChecklistItem.swift
//  Checklist
//
//  Created by Elisha Limanu on 28/12/19.
//  Copyright © 2019 Elisha Limanu. All rights reserved.
//

import Foundation


class ChecklistItem {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}
