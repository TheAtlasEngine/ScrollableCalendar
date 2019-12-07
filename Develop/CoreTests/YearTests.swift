//
//  YearTests.swift
//  CoreTests
//
//  Created by Kosuke Nishimura on 2019/11/30.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import XCTest
@testable import Core

final class YearTests: XCTestCase {

    // The weekday is Thursday
    // The weekday index is 4
    // The number of weeks is 5
    let theDay = Date(timeIntervalSince1970: 0)
    
    func testMonths() {
        let expected: [Month] = (0...11).map { Month(referenceDate: theDay.adding(value: $0, in: .month)) }
        let result = Year(referenceDate: theDay).months
        
        XCTAssertEqual(result, expected)
    }
}
