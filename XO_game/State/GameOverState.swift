//
//  GameOverState.swift
//  XO_game
//
//  Created by Grisha Pospelov on 11.11.2021.
//

import Foundation

class GameOverState: GameState {
    var isMoveCompleted: Bool = false
    public let winner: Player?
    
    private weak var gameViewController: GameViewController?
    
    init(winner: Player?, gameViewController: GameViewController) {
        self.winner = winner
        self.gameViewController = gameViewController
    }
    
    func begin() {
        gameViewController?.winnerLabel.isHidden = false
        
        if let winner = winner {
            gameViewController?.winnerLabel.text = getWinner(from: winner) + " won"
        } else {
            gameViewController?.winnerLabel.text = "It's a draw!"
        }
        
        gameViewController?.firstPlayerTurnLabel.isHidden = true
        gameViewController?.secondPlayerTurnLabel.isHidden = true
        
    }
    
    func addMark(at position: GameboardPosition) { }
    
    private func getWinner(from: Player) -> String {
        switch winner {
        case .first:
            return Session.shared.mode == .againstComputer ? "Human" : "1st player"
        case .second:
            return "2nd player"
        case .computer:
            return "Computer"
        case .none:
            return "There is no winner"
        }
    }
    
}
