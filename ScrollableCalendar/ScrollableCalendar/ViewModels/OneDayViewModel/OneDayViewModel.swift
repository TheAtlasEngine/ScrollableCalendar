//
//  OneDayViewModel.swift
//  ScrollableCalendar
//
//  Created by Kosuke Nishimura on 2019/11/22.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation
import Core

protocol OneDayViewModel {
    var day: Int { get }
    var weekday: String { get }
    var isSelected: Bool { get }
    var dayType: DayType { get }
}

struct DefaultOneDayViewModel: OneDayViewModel {
    let day: Int
    let weekday: String
    let isSelected: Bool
    let dayType: DayType
}
