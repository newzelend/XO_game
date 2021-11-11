//
//  Player.swift
//  XO_game
//
//  Created by Grisha Pospelov on 11.11.2021.
//

import Foundation

public enum Player: CaseIterable {
    case first
    case second
    case computer
    
    var next: Player {
        switch self {
        case .first: return Session.shared.mode == .againstComputer ? .computer : .second
        case .second: return .first
        case .computer: return .first
        }
    }
    
    var markViewPrototype: MarkView {
        switch self {
        case .first:
            return XView()
        case .second, .computer:
            return OView()
        }
    }
}
