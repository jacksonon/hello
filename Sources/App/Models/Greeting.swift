//
//  File.swift
//  
//
//  Created by wangjiawei on 2020/10/16.
//

import Vapor

// 与预期结构相匹配的Codable数据类型
struct Greeting: Content {
    var hello: String
}
