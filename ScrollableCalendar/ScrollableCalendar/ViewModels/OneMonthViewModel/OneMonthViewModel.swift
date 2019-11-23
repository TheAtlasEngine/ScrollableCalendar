//
//  OneMonthViewModel.swift
//  ScrollableCalendar
//
//  Created by Kosuke Nishimura on 2019/11/23.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation
import Core

struct OneMonthViewModel {
    let month: Int
    let numberOfDays: Int
}

extension OneMonthViewModel {
    
    init(monthInformation: MonthInformation) {
        self.month = monthInformation.month
        self.numberOfDays = monthInformation.numberOfDays
    }
}
