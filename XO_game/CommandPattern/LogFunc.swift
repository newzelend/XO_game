//
//  LogFunc.swift
//  XO_game
//
//  Created by Grisha Pospelov on 11.11.2021.
//

import Foundation

public func Log(action: LogAction) {
    let command = LogCommand(action: action)
    LogInvoker.shared.addLogCommand(command: command)
}
