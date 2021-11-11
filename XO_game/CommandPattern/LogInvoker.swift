//
//  LogInvoker.swift
//  XO_game
//
//  Created by Grisha Pospelov on 11.11.2021.
//

import Foundation

class LogInvoker {
    public static let shared = LogInvoker()
    
    private let receiver = LogReceiver()
    private let bufferSize = 5
    
    private var commands: [LogCommand] = []
    
    func addLogCommand(command: LogCommand) {
        commands.append(command)
        execute()
    }
    
    private func execute() {
        guard commands.count >= bufferSize else {
            return
        }
        
        commands.forEach { receiver.sendMessageToServerLog(message: $0.logMessage) }
        commands = []
    }
}
