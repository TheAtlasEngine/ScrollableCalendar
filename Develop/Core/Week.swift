//
//  Week.swift
//  Core
//
//  Created by Kosuke Nishimura on 2019/11/30.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation

public struct Week: Strideable {
    
    public typealias Weeks = Int
    public typealias Stride = Weeks
    
    public let referenceDate: Date
    public var days: [Date] {
        
        let startIndex = -referenceDate.weekdayIndex
        let endIndex = startIndex + 6
        
        return (startIndex...endIndex).map { referenceDate.adding(value: $0, in: .day) }
    }
    
    public init(referenceDate: Date) {
        self.referenceDate = referenceDate
    }
    
    public func advanced(by n: Week.Weeks) -> Week {
        let advancedReferenceDate = referenceDate.adding(value: n, in: .week)
        return Week(referenceDate: advancedReferenceDate)
    }
    
    /// a negative value means `self` is past comparing to `other`
    public func distance(to other: Week) -> Stride {
        return referenceDate.distance(to: other.referenceDate, in: .week)
    }
    
}
