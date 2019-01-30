//
//  Todolist.swift
//  Todolist_MVVM
//
//  Created by Ice on 29/1/2562 BE.
//  Copyright © 2562 Ice. All rights reserved.
//

import Foundation

class Todolist {
    
    
    func getTodoList() -> [String] {
        let names = UserDefaults.standard.array(forKey: "Array") as! [String]
        return names
    }
    
}
