//
//  TodoListProtocol.swift
//  todolist-viper
//
//  Created by Tifo Audi Alif Putra on 12/02/19.
//  Copyright © 2019 BCC FILKOM. All rights reserved.
//

import UIKit
protocol TodoListViewProtocol: class {
    var presenter: TodoListPresenterProtocol? { get set }
    
    //MARK: PRESENTER -> VIEW
    func showTodoItem(_ todo:[TodoItem])
    func showErrorMessage(_ message: String)
}

protocol TodoListPresenterProtocol: class {
    var view: TodoListViewProtocol? { get set }
    var interactor: TodoListInteractorInputProtocol? { get set }
    var router: TodoListRouterProtocol? { get set }
    
    //MARK: VIEW -> PRESENTER
    func viewWillAppear()
    func showTodoDetail(_ todo: TodoItem)
    func addTodo(_ todo: TodoItem)
    func removeTodo(_ todo: TodoItem)
}

protocol TodoListInteractorInputProtocol: class {
    var presenter: TodoListInteractorOutputProtocol? { get set }
    
    //MARK: PRESENTER -> INTERACTOR
    func retrieveTodos()
    func saveTodo(_ todo: TodoItem)
    func deleteTodo(_ todo: TodoItem)
}

protocol TodoListInteractorOutputProtocol: class {
    //MARK: INTERACTOR -> PRESENTER
    func didAddTodo(_ todo: TodoItem)
    func didRemoveTodo(_ todo: TodoItem)
    func didRetrieveTodos(_ todos: [TodoItem])
    func onError(message: String)
}

protocol TodoListRouterProtocol: class {

    static func createTodoListModule() -> UIViewController
    
    //MARK: PRESENTER -> ROUTER
    func presentTodoListDetailScreen(from view: TodoListViewProtocol, for todo: TodoItem)
}


