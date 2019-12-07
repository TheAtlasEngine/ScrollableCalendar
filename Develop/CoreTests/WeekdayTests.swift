//
//  WeekdayTests.swift
//  CoreTests
//
//  Created by Kosuke Nishimura on 2019/12/07.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import XCTest
@testable import Core

final class WeekdayTests: XCTestCase {
    
    let shortSymbols = [
        "Sun",
        "Mon",
        "Tue",
        "Wed",
        "Thu",
        "Fri",
        "Sat"
    ]
    
    let weekdays = Weekday.allCases
    
    func testSymbol() {
        let resultShortSymbols = weekdays.map { $0.symbol(useShortSymbol: true) }
        XCTAssertEqual(resultShortSymbols, shortSymbols)
    }
    
    func testAllSymbols() {
        let startWithSunday = Weekday.allSymbols(startWeekday: .sunday, useShortSymbols: true)
        XCTAssertEqual(startWithSunday, shortSymbols)
        
        let startWithMonday = Weekday.allSymbols(startWeekday: .monday, useShortSymbols: true)
        let expected = [
            "Mon",
            "Tue",
            "Wed",
            "Thu",
            "Fri",
            "Sat",
            "Sun"
        ]
        XCTAssertEqual(startWithMonday, expected)
    }
}
