//
//  Server.swift
//  swift-micro
//
//  Created by xiangyue on 2019/3/1.
//

import Foundation

public struct Message {
    var header: [String: String]
    var body: Data
}

public protocol Socket {
    var local: String { get set }
    var remote: String { get  set }
    func receive() throws -> Message
    func send(message: Message) throws
    func close() throws
}

public protocol Transport {
    
}


