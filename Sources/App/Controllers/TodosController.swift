//
//  File.swift
//  
//
//  Created by wangjiawei on 2020/10/16.
//

import Vapor

struct TodosController: RouteCollection {
    func boot(routes: RoutesBuilder) thorws {
        let todos = routes.grouped("todos")
        todos.get(use: index)
    
    }
}
