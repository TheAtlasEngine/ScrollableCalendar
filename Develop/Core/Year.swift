//
//  Year.swift
//  Core
//
//  Created by Kosuke Nishimura on 2019/11/30.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation

public struct Year: Strideable {
    
    public typealias Years = Int
    public typealias Stride = Years
    
    public let referenceDate: Date
    
    public var months: [Month] {
        let startIndex = 1 - referenceDate.month
        let endIndex = startIndex + 11
        
        return (startIndex...endIndex).map { Month(referenceDate: referenceDate.adding(month: $0)) }
    }
    
    public init(referenceDate: Date) {
        self.referenceDate = referenceDate
    }
    
    public func advanced(by n: Year.Years) -> Year {
        return Year(referenceDate: referenceDate.adding(year: n))
    }
    
    // TODO: modify this method
    // This method should return the number of years between `self` and given `Year`,
    // but currently the method returns the distance from `self.referenceDate` to `other.referenceDate`
    public func distance(to other: Year) -> Year.Years {
        return Int(exactly: other.referenceDate.timeIntervalSince(referenceDate))!
    }
}
