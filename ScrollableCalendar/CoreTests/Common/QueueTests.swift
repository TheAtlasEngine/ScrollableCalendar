//
//  QueueTests.swift
//  CoreTests
//
//  Created by Kosuke Nishimura on 2019/11/23.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import XCTest
@testable import Core

final class QueueTests: XCTestCase {
    
    func testQueue() {
        let item1 = 1
        let item2 = 2
        let item3 = 3
        
        var queue = Queue<Int>()
        
        func testEmptyQueue() {
            XCTAssert(queue.isEmpty)
            XCTAssertNil(queue.dequeue())
            XCTAssertNil(queue.peek())
        }
        
        testEmptyQueue()
        
        queue.enqueue(item1)
        queue.enqueue(item2)
        queue.enqueue(item3)
        
        XCTAssertEqual(queue.dequeue(), item1)
        XCTAssertEqual(queue.dequeue(), item2)
        XCTAssertEqual(queue.peek(), item3)
        XCTAssertEqual(queue.dequeue(), item3)
        
        testEmptyQueue()
    }
}
