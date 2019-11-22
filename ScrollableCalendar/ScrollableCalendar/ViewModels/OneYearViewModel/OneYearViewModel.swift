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
