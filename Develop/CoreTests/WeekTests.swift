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
    
    func testDays() {
        
        let theWeek: [Date] = (-4...2).map { theDay.adding(day: $0) }
        
        XCTAssertEqual(Week(referenceDate: theDay).days, theWeek)
    }
    
    func testAdvanced() {
        
        let theDayInNextWeek = theDay.adding(week: 1)
        let theNextWeek:  [Date] = (-4...2).map { theDayInNextWeek.adding(day: $0) }
        
        let testWeek = Week(referenceDate: theDay).advanced(by: 1)
        
        XCTAssertEqual(testWeek.days, theNextWeek)
    }
}
