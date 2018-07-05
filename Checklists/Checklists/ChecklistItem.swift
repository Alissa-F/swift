//
//  ChecklistItem.swift
//  Checklists
//
//  Created by Alexander Farber on 02.07.18.
//  Copyright © 2018 Alexander Farber. All rights reserved.
//

import Foundation
class ChecklistItem {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}


