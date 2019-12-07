//
//  Month.swift
//  Core
//
//  Created by Kosuke Nishimura on 2019/11/30.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation

public struct Month: Strideable {

    public typealias Months = Int
    public typealias Stride = Months

    public let referenceDate: Date
    
    public var numberOfDays: Int {
        return referenceDate.numberOfDaysInMonth
    }
    
    public var weeks: [Week] {
        let firstDay = referenceDate.adding(value: 1 - referenceDate.day, in: .day)
        
        return (0...5).map { Week(referenceDate: firstDay.adding(value: $0, in: .week)) }
    }

    public init(referenceDate: Date) {
        self.referenceDate = referenceDate
    }

    public func advanced(by n: Month.Months) -> Month {
        return Month(referenceDate: referenceDate.adding(value: n, in: .month))
    }
    
    /// a negative value means `self` is past comparing to `other`
    public func distance(to other: Month) -> Month.Months {
        return referenceDate.distance(to: other.referenceDate, in: .month)
    }

}
