//
//  DayInformation.swift
//  Core
//
//  Created by Kosuke Nishimura on 2019/11/22.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation

protocol DayInformation {
    var year: Int { get }
    var month: Int { get }
    var day: Int { get }
    var weekday: String { get }
}
