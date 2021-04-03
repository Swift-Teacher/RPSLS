//
//  Sign.swift
//  RPS
//
//  Created by Brian Foutty on 3/10/21.
//

import Foundation

// will generate a random Sign as the computer's choice
func randomSign() -> Sign {
    let sign = Int.random(in: 0...4)
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else if sign == 2 {
        return .scissors
    } else if sign == 3 {
        return .lizard
    } else {
        return .spock
    }
}

enum Sign {
    case rock
    case paper
    case scissors
    case lizard
    case spock
    
    var emoji: String {
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "✋"
        case .scissors:
            return "✌️"
        case .lizard:
            return "🦎"
        case .spock:
            return "🖖"
        }
    }
    
    func gameState(against opponentSign: Sign) -> GameState {
        if self == opponentSign {
            return .draw
        }
        
        switch self {
        case .rock:
            if opponentSign == .lizard {
                return .win
            } else if opponentSign == .scissors {
                return .win
            }
        case .paper:
            if opponentSign == .rock {
                return .win
            } else if opponentSign == .spock {
                return .win
            }
        case .scissors:
            if opponentSign == .paper {
                return .win
            } else if opponentSign == .lizard {
                return .win
            }
        case .lizard:
            if opponentSign == .spock {
                return .win
            } else if opponentSign == .paper {
                return .win
            }
        case .spock:
            if opponentSign == .rock {
                return .win
            } else if opponentSign == .scissors {
                return .win
            }
        }
        
        return .lose
    }
}


