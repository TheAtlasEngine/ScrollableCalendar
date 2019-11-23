//
//  Node.swift
//  Core
//
//  Created by Kosuke Nishimura on 2019/11/23.
//  Copyright © 2019 Kosuke Nishimura. All rights reserved.
//

import Foundation

public final class Node<T: Equatable> {
    
    var data: T?
    var next: Node<T>?
    weak var previous: Node<T>?
    
    init(data: T) {
        self.data = data
    }
}
