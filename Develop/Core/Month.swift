//
//  Month.swift
//  Core
//
//  Created by Kosuke Nishimura on 2019/11/30.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation

public struct Month: Strideable {

    public typealias Months = Int
    public typealias Stride = Months

    public let referenceDate: Date
    
    public var numberOfDays: Int {
        let month = referenceDate.month
        let year = referenceDate.year
        let isLeapYear = year % 4 == 0 && year % 100 != 0 || year % 400 == 0
        
        switch month {
        case 1, 3, 5, 7, 8, 10, 12:
            return 31
        case 4, 6, 9, 11:
            return 30
        case 2:
            return isLeapYear ? 29 : 28
        default:
            return 0
        }
    }
    
    public var weeks: [Week] {
        let firstDay = referenceDate.adding(day: 1 - referenceDate.day)
        let lastDay = referenceDate.adding(day: numberOfDays - referenceDate.day)
        
        var weeks: [Week] = []
        for weekIndex in (0...5) {
            let week = Week(referenceDate: firstDay.adding(week: weekIndex))
            weeks.append(week)
            if week.days.contains(lastDay) {
                break
            }
        }
        
        return weeks
    }

    public init(referenceDate: Date) {
        self.referenceDate = referenceDate
    }

    public func advanced(by n: Month.Months) -> Month {
        return Month(referenceDate: referenceDate.adding(month: n))
    }
    
    // TODO: modify this method
    // This method should return the number of months between `self` and given `Month`,
    // but currently the method returns the distance from `self.referenceDate` to `other.referenceDate`
    public func distance(to other: Month) -> Month.Months {
        return Int(exactly: other.referenceDate.timeIntervalSince(referenceDate))!
    }

}
