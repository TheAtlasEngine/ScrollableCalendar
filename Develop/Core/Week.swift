//
//  Week.swift
//  Core
//
//  Created by Kosuke Nishimura on 2019/11/30.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation

public struct Week: Strideable {
    
    public typealias Stride = Int
    
    public let referenceDate: Date
    public var days: [Date] {
        
        let startIndex = -referenceDate.weekdayIndex
        let endIndex = startIndex + 6
        
        return (startIndex...endIndex).map { referenceDate.added(day: $0) }
    }
    
    public init(referenceDate: Date) {
        self.referenceDate = referenceDate
    }
    
    public func advanced(by n: Stride) -> Week {
        let advancedReferenceDate = referenceDate.added(day: n)
        return Week(referenceDate: advancedReferenceDate)
    }
    
    // TODO: modify this method
    // This method should return the number of weeks between `self` and given `Week`,
    // but currently the method returns the distance from `self.referenceDate` to `other.referenceDate`
    public func distance(to other: Week) -> Stride {
        return Int(exactly: other.referenceDate.timeIntervalSince(referenceDate))!
    }
    
}