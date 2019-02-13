//
//  TodoStore.swift
//  todolist-viper
//
//  Created by Tifo Audi Alif Putra on 12/02/19.
//  Copyright © 2019 BCC FILKOM. All rights reserved.
//

import Foundation
class TodoStore {
    
    static let instance = TodoStore()
    
    public private(set) var todos: [TodoItem] = [
        TodoItem(title: "Reading", content: "Reading harry potter's book"),
        TodoItem(title: "Studying", content: "Studying harry potter's book"),
        TodoItem(title: "Coding", content: "Coding harry potter's book"),
        TodoItem(title: "Buying", content: "Buying harry potter's book")
    ]
    
    func addTodo(_ todo: TodoItem) {
        todos.append(todo)
    }
    
    func removeTodo(_ todo: TodoItem) {
        if let index = todos.firstIndex(where: { $0 === todo }) {
            todos.remove(at: index)
        }
    }
}
