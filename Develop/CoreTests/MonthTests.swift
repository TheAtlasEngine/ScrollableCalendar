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
    
    func testNumberOfDays() {
        let january1970 = Month(referenceDate: theDay)
        XCTAssertEqual(january1970.numberOfDays, 31)
        
        let februaryFirst2020 = theDay.adding(value: 50, in: .year).adding(value: 1, in: .month)
        let february2020 = Month(referenceDate: februaryFirst2020)
        XCTAssertEqual(february2020.numberOfDays, 29)
    }
    
    func testWeeks() {
        let expected: [Week] = [
            Week(referenceDate: theDay),
            Week(referenceDate: theDay.adding(value: 1, in: .week)),
            Week(referenceDate: theDay.adding(value: 2, in: .week)),
            Week(referenceDate: theDay.adding(value: 3, in: .week)),
            Week(referenceDate: theDay.adding(value: 4, in: .week)),
            Week(referenceDate: theDay.adding(value: 5, in: .week))
        ]
        
        let result = Month(referenceDate: theDay).weeks
        
        XCTAssertEqual(result, expected)
    }
}
