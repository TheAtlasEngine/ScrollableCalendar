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
    
    func adding(day: Int) -> Date {
        return calendar.date(byAdding: .day, value: day, to: self)!
    }
    
    func adding(week: Int) -> Date {
        return calendar.date(byAdding: .day, value: week * 7, to: self)!
    }
    
    func adding(month: Int) -> Date {
        return calendar.date(byAdding: .month, value: month, to: self)!
    }
}
