//
//  TodoList.swift
//  Checklist
//
//  Created by Elisha Limanu on 02/01/20.
//  Copyright © 2020 Elisha Limanu. All rights reserved.
//

import Foundation


class TodoList {
    var todos: [ChecklistItem] = []
    
    init() {
        let row_0_item = ChecklistItem()
        let row_1_item = ChecklistItem()
        let row_2_item = ChecklistItem()
        let row_3_item = ChecklistItem()
        let row_4_item = ChecklistItem()
        
        row_0_item.text = "Wathing korean drama"
        row_1_item.text = "Wash hair"
        row_2_item.text = "Eat something nice"
        row_3_item.text = "Do laundry"
        row_4_item.text = "Go to work"
        
        todos.append(row_0_item)
        todos.append(row_1_item)
        todos.append(row_2_item)
        todos.append(row_3_item)
        todos.append(row_4_item)
    }
    
}
