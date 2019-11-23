//
//  DayType.swift
//  ScrollableCalendar
//
//  Created by Kosuke Nishimura on 2019/11/22.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation

public enum DayType {
    case past
    case today
    case future
    
    public init(date: Date) {
        let today = Date()
        
        if date == today {
            self = .today
        } else if date < today {
            self = .past
        } else {
            self = .future
        }
    }
}
