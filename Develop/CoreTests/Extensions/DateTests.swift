//
//  DateTests.swift
//  CoreTests
//
//  Created by Kosuke Nishimura on 2019/12/07.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import XCTest
@testable import Core

final class DateTests: XCTestCase {

    func testDistance() {
        let today = Date.today
        let tomorrow = today.adding(value: 1, in: .day)
        let yesterday = today.adding(value: -1, in: .day)
        let nextWeek = today.adding(value: 1, in: .week)
        let previousWeek = today.adding(value: -1, in: .week)
        let nextMonth = today.adding(value: 1, in: .month)
        let previousMonth = today.adding(value: -1, in: .month)
        let nextYear = today.adding(value: 1, in: .year)
        let previousYear = today.adding(value: -1, in: .year)
        
        XCTAssertEqual(tomorrow.distance(to: today, in: .day), 1)
        XCTAssertEqual(yesterday.distance(to: today, in: .day), -1)
        XCTAssertEqual(nextWeek.distance(to: today, in: .week), 1)
        XCTAssertEqual(previousWeek.distance(to: today, in: .week), -1)
        XCTAssertEqual(nextMonth.distance(to: today, in: .month), 1)
        XCTAssertEqual(previousMonth.distance(to: today, in: .month), -1)
        XCTAssertEqual(nextYear.distance(to: today, in: .year), 1)
        XCTAssertEqual(previousYear.distance(to: today, in: .year), -1)
    }

}
