//
//  Date+Extension.swift
//  Core
//
//  Created by Kosuke Nishimura on 2019/11/30.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation

public extension Date {
    
    private var calendar: Calendar {
        return .current
    }
    
    private var dateComponents: DateComponents {
        return calendar.dateComponents([.weekday, .day, .weekOfMonth, .weekOfYear, .month, .year], from: self)
    }
    
    static let today = Date()
    
    /// One minute in second
    static let oneMinute = 60
    
    /// One hour in second
    static let oneHour = 60 * 60
    
    /// One day in second
    static let oneDay = 60 * 60 * 24
    
    /// One week in second
    static let oneWeek = 60 * 60 * 24 * 7
    
    var day: Int {
        return dateComponents.day!
    }
    
    var weekOfMonth: Int {
        return dateComponents.weekOfMonth!
    }
    
    var weekOfYear: Int {
        return dateComponents.weekOfYear!
    }
    
    var month: Int {
        return dateComponents.month!
    }
    
    var year: Int {
        return dateComponents.year!
    }
    
    var weekdayIndex: Int {
        return dateComponents.weekday! - 1
    }
    
    /// Returns the localized weekday symbol of given day
    func weekday(useShortSymbol: Bool) -> String {
        let symbols = useShortSymbol ? calendar.shortWeekdaySymbols : calendar.weekdaySymbols
        return symbols[weekdayIndex]
    }
}

public extension Date {
    
    enum Unit {
        case day
        case week
        case month
        case year
    }
    
    func adding(value: Int, in unit: Unit) -> Date {
        switch unit {
        case .day:
            return calendar.date(byAdding: .day, value: value, to: self)!
        case .week:
            return calendar.date(byAdding: .day, value: value * 7, to: self)!
        case .month:
            return calendar.date(byAdding: .month, value: value, to: self)!
        case .year:
            return calendar.date(byAdding: .year, value: value, to: self)!
        }
    }
    
    /// a negative value means `self` is past comparing to `other`
    func distance(to other: Date, in unit: Unit) -> Int {
        let component = calendar.dateComponents([.day, .month, .year], from: other, to: self)
        switch unit {
        case .day:
            return component.day!
        case .week:
            return component.day! / 7
        case .month:
            return component.month!
        case .year:
            return component.year!
        }
    }
}
