//
//  LogCommand.swift
//  XO_game
//
//  Created by Grisha Pospelov on 11.11.2021.
//


import Foundation

class LogCommand {
    let action: LogAction
    
    init(action: LogAction) {
        self.action = action
    }
    
    var logMessage: String {
        switch action {
        case .playerSetMark(let player, let position):
            return "\(player) placed mark at \(position)"
        case .gameFinished(let winner):
            if let winner = winner {
                return "\(winner) won the game"
            } else {
                return "Game is drawn"
            }
        case .restartGame:
            return "Game restarted"
        }
    }
}
