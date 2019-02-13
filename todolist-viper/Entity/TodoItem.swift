//
//  TodoItem.swift
//  todolist-viper
//
//  Created by Tifo Audi Alif Putra on 12/02/19.
//  Copyright © 2019 BCC FILKOM. All rights reserved.
//

import Foundation
class TodoItem {
    public private(set) var title: String!
    public private(set) var content: String!
    
    init(title: String, content: String) {
        self.title = title
        self.content = content
    }
}
