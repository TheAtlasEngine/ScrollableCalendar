//
//  LinkedListTests.swift
//  CoreTests
//
//  Created by Kosuke Nishimura on 2019/11/23.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import XCTest
@testable import Core

final class LinkedListTests: XCTestCase {

    func testLinkedList() {
        let node1 = Node<Int>(data: 1)
        let node2 = Node<Int>(data: 2)
        let node3 = Node<Int>(data: 3)
        
        let linkedList = LinkedList<Int>()
        
        func testEmptyList(line: UInt = #line) {
            XCTAssert(linkedList.isEmpty, line: line)
            XCTAssertNil(linkedList.first, line: line)
            XCTAssertNil(linkedList.last, line: line)
            XCTAssertNil(linkedList.node(at: -1), line: line)
            XCTAssertNil(linkedList.node(at: 0), line: line)
            XCTAssertNil(linkedList.node(at: 1), line: line)
        }
        
        testEmptyList()
        
        linkedList.append(node1.data!)
        linkedList.append(node2.data!)
        linkedList.append(node3.data!)
        
        XCTAssertEqual(linkedList.first?.data, node1.data)
        XCTAssertEqual(linkedList.last?.data, node3.data)
        XCTAssertEqual(linkedList.node(at: 0)?.data, node1.data)
        XCTAssertEqual(linkedList.node(at: 1)?.data, node2.data)
        XCTAssertEqual(linkedList.node(at: 2)?.data, node3.data)
        
        linkedList.remove(node: linkedList.node(at: 1)!)
        XCTAssert(!linkedList.isEmpty)
        XCTAssertEqual(linkedList.first?.data, node1.data)
        XCTAssertEqual(linkedList.last?.data, node3.data)
        XCTAssertEqual(linkedList.node(at: 0)?.data, node1.data)
        XCTAssertEqual(linkedList.node(at: 1)?.data, node3.data)
        
        linkedList.removeAll()
        testEmptyList()
    }
}
