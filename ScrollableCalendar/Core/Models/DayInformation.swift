//
//  DayInformation.swift
//  Core
//
//  Created by Kosuke Nishimura on 2019/11/22.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation

public protocol DayInformation {
    var day: Int { get }
    var weekday: String { get }
    var dayType: DayType { get }
}

public struct DefaultDayInformation: DayInformation {
    public let day: Int
    public let weekday: String
    public let dayType: DayType
}

public extension DefaultDayInformation {
    
    init(calendar: Calendar, date: Date) {
        self.day = calendar.component(.day, from: date)
        
        let weekdayIndex = calendar.component(.weekday, from: date)
        self.weekday = calendar.shortWeekdaySymbols[weekdayIndex]
        
        self.dayType = DayType(date: date)
    }
}
