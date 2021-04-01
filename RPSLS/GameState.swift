//
//  GameState.swift
//  RPS
//
//  Created by Brian Foutty on 3/10/21.
//

import Foundation

// covers the four states of the game
enum GameState {
    case start, win, lose, draw
    
    var status: String {
        switch self {
        case .start:
            return "Rock, Paper, Scissors, Lizard, Spock?"
        case .win:
            return "You won! 🎉"
        case .lose:
            return "Sorry you're a loser."
        case .draw:
            return "It's a draw. Limbo!"
        }
    }
}
