//
//  Weekday.swift
//  Core
//
//  Created by Kosuke Nishimura on 2019/12/07.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation

public enum Weekday: Int, CaseIterable {
    case sunday = 0
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    
    public init(rawValue: Int) {
        switch rawValue % 7 {
        case 0:
            self = .sunday
        case 1, -6:
            self = .monday
        case 2, -5:
            self = .tuesday
        case 3, -4:
            self = .wednesday
        case 4, -3:
            self = .thursday
        case 5, -2:
            self = .friday
        case 6, -1:
            self = .saturday
        default:
            fatalError()
        }
    }
    
    public func symbol(useShortSymbol: Bool) -> String {
        let calendar = Calendar.current
        
        return useShortSymbol ? calendar.shortWeekdaySymbols[rawValue] : calendar.shortWeekdaySymbols[rawValue]
    }
    
    public static func allSymbols(useShortSymbols: Bool) -> [String] {
        let calendar = Calendar.current
        
        return useShortSymbols ? calendar.shortWeekdaySymbols : calendar.shortWeekdaySymbols
    }
}
