//
//  PlayerState.swift
//  XO_game
//
//  Created by Grisha Pospelov on 11.11.2021.
//

import UIKit

class PlayerState: GameState {
    public let player: Player
    var isMoveCompleted: Bool = false
    private weak var gameViewController: GameViewController?
    private weak var gameBoard: Gameboard?
    private weak var gameBoardView: GameboardView?

    public let markViewPrototype: MarkView

    init(player: Player, gameViewController: GameViewController,
         gameBoard: Gameboard, gameBoardView: GameboardView, markViewPrototype: MarkView) {
        self.player = player
        self.gameViewController = gameViewController
        self.gameBoard = gameBoard
        self.gameBoardView = gameBoardView
        self.markViewPrototype = markViewPrototype
    }

    func begin() {
        switch player {
        case .first:
            gameViewController?.firstPlayerTurnLabel.isHidden = false
            gameViewController?.secondPlayerTurnLabel.isHidden = true
        case .second, .computer:
            gameViewController?.firstPlayerTurnLabel.isHidden = true
            gameViewController?.secondPlayerTurnLabel.isHidden = false
        }

        gameViewController?.winnerLabel.isHidden = true
    }

    func addMark(at position: GameboardPosition) {
        Log(action: .playerSetMark(player: player, position: position))

        guard let gameBoardView = gameBoardView,
              gameBoardView.canPlaceMarkView(at: position) else {
            return
        }

        gameBoard?.setPlayer(player, at: position)
        gameBoardView.placeMarkView(markViewPrototype.copy(), at: position)
        isMoveCompleted = true
    }


}
