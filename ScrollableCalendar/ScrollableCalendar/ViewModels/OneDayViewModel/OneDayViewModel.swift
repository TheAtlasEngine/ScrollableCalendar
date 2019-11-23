//
//  OneDayViewModel.swift
//  ScrollableCalendar
//
//  Created by Kosuke Nishimura on 2019/11/22.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation
import Core

struct OneDayViewModel {
    let day: Int
    let weekday: String
    let dayType: DayType
    var isSelected: Bool
}

extension OneDayViewModel {
    
    init(dayInformation: DayInformation, isSelected: Bool) {
        self.day = dayInformation.day
        self.weekday = dayInformation.weekday
        self.dayType = dayInformation.dayType
        self.isSelected = isSelected
    }
}
