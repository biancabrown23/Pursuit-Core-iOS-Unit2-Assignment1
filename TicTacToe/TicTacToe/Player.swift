//
//  Player.swift
//  TicTacToe
//
//  Created by Bianca Brown on 8/6/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

enum Player: String {
    case player1 = "O"
    case player2 = "X"
    
    mutating func alternate() {
        switch self {
        case .player1:
            self = .player2
        case .player2:
            self = .player1
        }
    }
}

// this is what switches the players once a player has clicked on a square. 