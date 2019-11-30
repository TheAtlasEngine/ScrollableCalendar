//
//  MonthTests.swift
//  CoreTests
//
//  Created by Kosuke Nishimura on 2019/11/30.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import XCTest
@testable import Core

final class MonthTests: XCTestCase {

    // The weekday is Thursday
    // The weekday index is 4
    // The number of weeks is 5
    let theDay = Date(timeIntervalSince1970: 0)
    
    func testWeeks() {
        let expected: [Week] = [
            Week(referenceDate: theDay),
            Week(referenceDate: theDay.adding(week: 1)),
            Week(referenceDate: theDay.adding(week: 2)),
            Week(referenceDate: theDay.adding(week: 3)),
            Week(referenceDate: theDay.adding(week: 4)),
        ]
        
        let result = Month(referenceDate: theDay).weeks
        
        XCTAssertEqual(result, expected)
    }
}
