//
//  MonthInformation.swift
//  Core
//
//  Created by Kosuke Nishimura on 2019/11/22.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation

protocol MonthInformation {
    var year: Int { get }
    var month: Int { get }
    var numberOfDays: Int { get }
}

struct DefaultMonthInformation: MonthInformation {
    let year: Int
    let month: Int
    let numberOfDays: Int
}
