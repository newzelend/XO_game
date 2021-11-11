//
//  LogAction.swift
//  XO_game
//
//  Created by Grisha Pospelov on 11.11.2021.
//

import Foundation

public enum LogAction {
    case playerSetMark(player: Player, position: GameboardPosition)
    case gameFinished(winner: Player?)
    case restartGame
}
