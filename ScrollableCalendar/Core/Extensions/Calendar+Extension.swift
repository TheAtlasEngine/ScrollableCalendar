//
//  Calendar+Extension.swift
//  Core
//
//  Created by Kosuke Nishimura on 2019/11/23.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation

public extension Calendar {
    
    static func calendar(locale: Locale) -> Calendar {
        var calendar = Calendar(identifier: .gregorian)
        calendar.locale = locale
        return calendar
    }
    
    static let japaneseCalendar = calendar(locale: .japan)
    static let unitedStatesCalendar = calendar(locale: .unitedStates)
}
