//
//  OneYearViewModel.swift
//  ScrollableCalendar
//
//  Created by Kosuke Nishimura on 2019/11/23.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation
import Core

struct OneYearViewModel {
    let year: Int
    let isLeapYear: Bool
}

extension OneYearViewModel {
    
    init(yearInformation: YearInformation) {
        self.year = yearInformation.year
        self.isLeapYear = yearInformation.isLeapYear
    }
}
