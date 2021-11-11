//
//  GameState.swift
//  XO_game
//
//  Created by Grisha Pospelov on 11.11.2021.
//

import Foundation

protocol GameState {
    var isMoveCompleted: Bool { get }
    
    func begin()
    func addMark(at position: GameboardPosition)
}
