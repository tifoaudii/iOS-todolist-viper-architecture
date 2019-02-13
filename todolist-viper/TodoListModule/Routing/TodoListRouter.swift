//
//  TodoListRouter.swift
//  todolist-viper
//
//  Created by Tifo Audi Alif Putra on 12/02/19.
//  Copyright © 2019 BCC FILKOM. All rights reserved.
//

import UIKit
class TodoListRouter: TodoListRouterProtocol {
    
    static var storyboard: UIStoryboard {
        return UIStoryboard(name: "main", bundle: Bundle.main)
    }
    
    static func createTodoListModule() -> UIViewController {
        
    }
    
    func presentTodoListDetailScreen(from view: TodoListViewProtocol, for todo: TodoItem) {
        <#code#>
    }
}
