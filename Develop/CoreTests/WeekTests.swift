//
//  WeekTests.swift
//  CoreTests
//
//  Created by Kosuke Nishimura on 2019/11/30.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import XCTest
@testable import Core

final class WeekTests: XCTestCase {

    // The weekday is Thursday
    // The weekday index is 4
    let theDay = Date(timeIntervalSince1970: 0)
    
    private var theWeek: Week {
        return Week(referenceDate: theDay)
    }
    
    func testDays() {
        let expected: [Date] = (-4...2).map { theDay.adding(value: $0, in: .day) }
        XCTAssertEqual(theWeek.days, expected)
    }
    
    func testAdvanced() {
        
        let theDayInNextWeek = theDay.adding(value: 1, in: .week)
        let nextWeek = theWeek.advanced(by: 1)
        let expectedNextWeek:  [Date] = (-4...2).map { theDayInNextWeek.adding(value: $0, in: .day) }
        XCTAssertEqual(nextWeek.days, expectedNextWeek)
    }
    
    func testDistance() {
        
        for n in (-3...3) {
            let result = theWeek.advanced(by: n)
            XCTAssertEqual(result.distance(to: theWeek), n)
        }
    }
}
