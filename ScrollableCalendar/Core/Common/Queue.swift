//
//  Queue.swift
//  Core
//
//  Created by Kosuke Nishimura on 2019/11/23.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation

struct Queue<T: Equatable> {
    
    private var list = LinkedList<T>()
    
    public var isEmpty: Bool {
        return list.isEmpty
    }
    
    public mutating func enqueue(_ item: T) {
        list.append(item)
    }
    
    public mutating func dequeue() -> T? {
        guard !isEmpty, let element = list.first else { return nil }
        
        list.remove(node: element)
        
        return element.data
    }
    
    public func peek() -> T? {
        return list.first?.data
    }
}
