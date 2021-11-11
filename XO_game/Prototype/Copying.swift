//
//  Copying.swift
//  XO_game
//
//  Created by Grisha Pospelov on 11.11.2021.
//

import Foundation

protocol Copying {
    init(_ prototype: Self)
}

extension Copying {
    func copy() -> Self {
        return type(of: self).init(self)
    }
}
