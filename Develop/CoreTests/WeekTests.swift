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

    func testDistance() {
        
        // The weekday is Friday
        // The weekday index is 5
        let theDay = Date(timeIntervalSince1970: 0)
        let theWeek: [Date] = (-5...1).map { theDay.added(day: $0) }
        
        XCTAssertEqual(Week(referenceDate: theDay).days, theWeek)
    }
}
