//
//  Server.swift
//  swift-micro
//
//  Created by xiangyue on 2019/3/1.
//

import Foundation

public protocol Server {
    var options: ServerOptions { get }
    
    func start() -> Error?
    func stop() -> Error?
    
}

public protocol Request {
    var service: String { get }
    var method: String { get }
    var endpoint: String { get }
    var contentType: String { get }
    var header: [String: String] { get set }
    var body: Any { get set}
    
    func read() -> (Data, Error)
}

public protocol Response {
    
}


