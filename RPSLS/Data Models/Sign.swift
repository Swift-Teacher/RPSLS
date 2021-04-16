//
//  Sign.swift
//  RPS
//
//  Created by Brian Foutty on 3/10/21.
//

import Foundation

// Holds the game rule explanation for each outcome in the game. The text is put into the resultLabel.
// #20.3 create result variable that is an empty string
var result = ""

// will generate a random Sign as the computer's choice
func randomSign() -> Sign {
    let sign = Int.random(in: 0...4) // #6 changed to 4
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else if sign == 2 {
        return .scissors
    } // #6 added .lizard and .spock
    else if sign == 3 {
        return .lizard
    } else {
        return .spock
    }
}

enum Sign {
    case rock
    case paper
    case scissors
    // #2 add cases lizard and spock
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
            // #2 add cases .lizard and .spock
        case .lizard:
            return "🦎"
        case .spock:
            return "🖖"
        }
    }
    
    func gameState(against opponentSign: Sign) -> GameState {
        if self == opponentSign {
            // if it is a draw no explanation is needed
            // #20.4 assign result to an empty string
            result = ""
            return .draw
        }
        
        switch self {
        case .rock:
            if opponentSign == .lizard {
                result = "Rock crushes lizard"
                return .win
            } // #4 add winning against .scissors
            else if opponentSign == .scissors {
                result = "Rock crushes scissors"
                return .win
            } // 20.5 add the two losing cases
            else if opponentSign == .paper {
                result = "Paper covers rock"
                return .lose
            } else if opponentSign == .spock {
                result = "Spock vaporizes rock"
            }
        case .paper:
            if opponentSign == .rock {
                result = "Paper covers rock"
                return .win
            } // #4 add winning against .spock
            else if opponentSign == .spock {
                result = "Paper disproves Spock"
                return .win
            } // 20.5 add the two losing cases
            else if opponentSign == .scissors {
                result = "Scissors cut paper"
                return .lose
            }  else if opponentSign == .lizard {
                result = "Lizard eats paper"
            }
        case .scissors:
            if opponentSign == .paper {
                result = "Scissors cuts paper"
                return .win
            } // #4 add winning against .lizard
            else if opponentSign == .lizard {
                result = "Scissors decapitates lizard"
                return .win
            } // 20.5 add the two losing cases
            else if opponentSign == .spock {
                result = "Spock smashes scissors"
                return .lose
            } else if opponentSign == .rock {
                result = "Rock crushes scissors"
            }
        // #5 add .lizard case and the two winning comparisons for .spock & .paper
        case .lizard:
            if opponentSign == .spock {
                result = "Lizard poisons Spock"
                return .win
            } else if opponentSign == .paper {
                result = "Lizard eats paper"
                return .win
            } // 20.5 add the two losing cases
            else if opponentSign == .rock {
                result = "Rock crushes lizard"
                return .lose
            } else if opponentSign == .scissors {
                result = "Scissors decapitates lizard"
                return .lose
            }
        // #5 add .spock case and the two winning comparisons for .rock & .scissors
        case .spock:
            if opponentSign == .rock {
                result = "Spock vaporizes rock"
                return .win
            } else if opponentSign == .scissors {
                result = "Spock smashes scissors"
                return .win
            } // 20.5 add the two losing cases
            else if opponentSign == .lizard {
                result = "Lizard poisons Spock"
                return .lose
            } else if opponentSign == .paper {
                result = "Paper disproves Spock"
                return .lose
            }
        }
        // #20.4 assign result to an empty string
        result = ""
        return .lose
    }
}


