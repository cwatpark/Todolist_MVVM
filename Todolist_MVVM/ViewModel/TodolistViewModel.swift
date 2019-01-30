//
//  TodolistViewModel.swift
//  Todolist_MVVM
//
//  Created by Ice on 29/1/2562 BE.
//  Copyright © 2562 Ice. All rights reserved.
//

import Foundation
class TodolistViewModel {
    
    var myTodo:Todolist
    
    init(){
        myTodo = Todolist()
        //super.init()
    }
    
    var getList:[String]{
        return myTodo.getTodoList()
    }
    
}
