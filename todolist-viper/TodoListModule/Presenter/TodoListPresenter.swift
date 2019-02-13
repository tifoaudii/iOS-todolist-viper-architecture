//
//  TodoListPresenter.swift
//  todolist-viper
//
//  Created by Tifo Audi Alif Putra on 12/02/19.
//  Copyright © 2019 BCC FILKOM. All rights reserved.
//

import UIKit

class TodoListPresenter: TodoListPresenterProtocol {
    
    var view: TodoListViewProtocol?
    var interactor: TodoListInteractorInputProtocol?
    var router: TodoListRouterProtocol?
    
    func viewWillAppear() {
        interactor?.retrieveTodos()
    }
    
    func showTodoDetail(_ todo: TodoItem) {
        guard let view = view else { return }
        router?.presentTodoListDetailScreen(from: view, for: todo)
    }
    
    func addTodo(_ todo: TodoItem) {
        interactor?.saveTodo(todo)
    }
    
    func removeTodo(_ todo: TodoItem) {
        interactor?.deleteTodo(todo)
    }
}

extension TodoListPresenter: TodoListInteractorOutputProtocol {
    func didAddTodo(_ todo: TodoItem) {
        interactor?.retrieveTodos()
    }
    
    func didRemoveTodo(_ todo: TodoItem) {
        interactor?.retrieveTodos()
    }
    
    func didRetrieveTodos(_ todos: [TodoItem]) {
        view?.showTodoItem(todos)
    }
    
    func onError(message: String) {
        view?.showErrorMessage(message)
    }
}

