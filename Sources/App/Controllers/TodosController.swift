//
//  File.swift
//  
//
//  Created by wangjiawei on 2020/10/16.
//

import Vapor

struct TodosController: RouteCollection {
    func boot(routes: RoutesBuilder) throws {
        let todos = routes.grouped("todos")
        todos.get(use: index)
        todos.post(use: create)
        todos.group(":id") { todo in
            todo.get(use: show)
            todo.put(use: update)
            todo.delete(use: delete)
        }
    }
    
    func index(req: Request) throws -> String {
        // ...
        return "index"
    }
    
    func create(req: Request) throws -> String {
        // ...
        return "create"
    }
    
    func show(req: Request) throws -> String {
        //  guard let id = req.parameters.get("id") else
        guard let id = req.parameters.get("id") else {
            throw Abort(.internalServerError)
        }
        return "show"
    }
    
    func update(req: Request) throws -> String {
        guard let id = req.parameters.get("id") else {
            throw Abort(.internalServerError)
        }
        return "update"
    }
    
    func delete(req: Request) throws -> String {
        guard let id = req.parameters.get("id") else {
            throw Abort(.internalServerError)
        }
        return "delete"
    }
    
    
}
