//
//  MonthInformation.swift
//  Core
//
//  Created by Kosuke Nishimura on 2019/11/22.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation

public protocol MonthInformation {
    var year: Int { get }
    var month: Int { get }
    var numberOfDays: Int { get }
    var firstWeekday: Int { get }
}

public struct DefaultMonthInformation: MonthInformation {
    public let year: Int
    public let month: Int
    public let numberOfDays: Int
    public let firstWeekday: Int
}

public extension DefaultMonthInformation {
    
    init(calendar: Calendar, date: Date) {
        let theYear = calendar.component(.year, from: date)
        self.year = theYear
        
        self.month = calendar.component(.month, from: date)
        
        let isLeapYear = theYear % 4 == 0 && theYear % 100 != 0 || theYear % 400 == 0
        switch self.month {
        case 1, 3, 5, 7, 8, 10, 12:
            self.numberOfDays = 31
        case 4, 6, 9, 11:
            self.numberOfDays = 30
        case 2:
            self.numberOfDays = isLeapYear ? 29 : 28
        default:
            self.numberOfDays = 0
        }
        
        let weekdayOfToday = calendar.component(.weekday, from: .today)
        let today = calendar.component(.day, from: .today)
        let numberOfDaysInWeek = 7
        
        self.firstWeekday = abs((today - weekdayOfToday) % numberOfDaysInWeek)
    }
}
