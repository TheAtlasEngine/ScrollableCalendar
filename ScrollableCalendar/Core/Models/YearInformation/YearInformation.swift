//
//  YearInformation.swift
//  Core
//
//  Created by Kosuke Nishimura on 2019/11/22.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation

protocol YearInformation {
    var year: Int { get }
    var isLeapYear: Bool { get }
}
