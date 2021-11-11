//
//  Session.swift
//  XO_game
//
//  Created by Grisha Pospelov on 11.11.2021.
//

import Foundation

final class Session {
    
    static let shared = Session()
    private init() {}
    
    var mode: gameMode?
    
    var playerFirstMoves: [PlayerMove] = []
    var playerSecondMoves: [PlayerMove] = []
}
