//
//  YearInformation.swift
//  Core
//
//  Created by Kosuke Nishimura on 2019/11/22.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation

public protocol YearInformation {
    var year: Int { get }
    var isLeapYear: Bool { get }
}

public struct DefaultYearInformation: YearInformation {
    public let year: Int
    public let isLeapYear: Bool
}

public extension DefaultYearInformation {
    
    init(calendar: Calendar) {
        let theYear = calendar.component(.year, from: .today)
        self.year = theYear
        self.isLeapYear = theYear % 4 == 0 && theYear % 100 != 0 || theYear % 400 == 0
    }
}
