//
//  YearInformation.swift
//  Core
//
//  Created by Kosuke Nishimura on 2019/11/22.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation

protocol YearInformation {
    var year: Int { get }
    var isLeapYear: Bool { get }
}

struct DefaultYearInformation: YearInformation {
    let year: Int
    let isLeapYear: Bool
}

extension DefaultYearInformation {
    
    init(calendar: Calendar, date: Date) {
        let theYear = calendar.component(.year, from: date)
        self.year = theYear
        self.isLeapYear = theYear % 4 == 0 && theYear % 100 != 0 || theYear % 400 == 0
    }
}
