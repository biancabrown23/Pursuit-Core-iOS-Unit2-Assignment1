//
//  TicTacToeBrain.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import Foundation

class TicTacToeBrain {
    
    var gameBoard = [
        ["-", "-", "-"],
        ["-", "-", "-"],
        ["-", "-", "-"]
    ]
    
    // our layout for the board.
    
    func updateGameBoard(player: Player, row: Int, col: Int) {
        switch player {
        case .player1:
            gameBoard[row][col] = "O"
        case .player2:
            gameBoard[row][col] = "X"
        }
    }

    // switches between the players.

func checkGameState() -> winningCondition {
    for row in gameBoard {
        if row == ["O", "O", "O"]{
        return .player1wins
    } else if row == ["X", "X", "X"] {
    return .player2wins
    }
    return .tie
    }
    return .ongoing
}
}

// this is the winning condition to see if someone has 3 x's or 3 o's
