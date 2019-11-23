//
//  LinkedList.swift
//  Core
//
//  Created by Kosuke Nishimura on 2019/11/23.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation

public final class LinkedList<T: Equatable> {
    
    public typealias N = Node<T>
    
    private var head: N?
    private var tail: N?
    
    public var isEmpty: Bool {
        return head == nil
    }
    public var first: N? {
        return head
    }
    public var last: N? {
        return tail
    }
    
    public func node(at index: Int) -> N? {
        guard index >= 0 || !isEmpty else { return nil }
        
        var node = head
        for _ in 0..<index {
            node = node?.next
        }
        
        return node
    }
    
    public func append(_ data: T) {
        let newNode = Node(data: data)
        
        if let tailNode = tail {
            newNode.previous = tailNode
            tailNode.next = newNode
        } else {
            head = newNode
        }
        
        tail = newNode
    }
    
    public func removeAll() {
        head = nil
        tail = nil
    }
    
    @discardableResult
    public func remove(at index: Int) -> T? {
        guard let selectedNode = node(at: index) else { return nil }
        
        let previous = selectedNode.previous
        let next = selectedNode.next
        
        if let previous = previous {
            previous.next = next
        } else {
            head = next
        }
        next?.previous = previous
        
        if next == nil {
            tail = previous
        }
        
        selectedNode.previous = nil
        selectedNode.next = nil
        
        return selectedNode.data
    }
}
