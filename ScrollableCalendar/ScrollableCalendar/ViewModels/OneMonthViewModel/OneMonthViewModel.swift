//
//  OneMonthViewModel.swift
//  ScrollableCalendar
//
//  Created by Kosuke Nishimura on 2019/11/23.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation
import Core

protocol OneMonthViewModel {
    var month: Int { get }
    var numberOfDays: Int { get }
}
