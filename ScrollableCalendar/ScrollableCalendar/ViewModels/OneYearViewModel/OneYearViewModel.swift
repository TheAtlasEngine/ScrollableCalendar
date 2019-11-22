//
//  OneYearViewModel.swift
//  ScrollableCalendar
//
//  Created by Kosuke Nishimura on 2019/11/23.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation
import Core

protocol OneYearViewModel {
    var year: Int { get }
    var isLeapYear: Bool { get }
}

struct DefaultOneYearViewModel: OneYearViewModel {
    let year: Int
    let isLeapYear: Bool
}

extension DefaultOneYearViewModel {
    
    init(yearInformation: YearInformation) {
        self.year = yearInformation.year
        self.isLeapYear = yearInformation.isLeapYear
    }
}
