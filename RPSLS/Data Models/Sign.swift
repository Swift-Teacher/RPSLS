//
//  Sign.swift
//  RPS
//
//  Created by Brian Foutty on 3/10/21.
//

import Foundation

// Holds the game rule explanation for each outcome in the game. The text is put into the ruleLabel.
// #20.3 create a rule variable that is an empty string
var rule = ""

// will generate a random Sign as the computer's choice
func randomSign() -> Sign {
    let sign = Int.random(in: 0...4) // #6 changed upper part of range to 4
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
            // #20.4 assign rule to an empty string
            rule = ""
            return .draw
        }
        
        switch self {
        case .rock:
            if opponentSign == .lizard {
                // #20.5 assign the corresponding rule
                rule = "Rock crushes lizard"
                return .win
            } // #4 add winning against .scissors
            else if opponentSign == .scissors {
                // #20.5 assign the corresponding rule
                rule = "Rock crushes scissors"
                return .win
            } // // #20.6 add the two losing cases and rules
            else if opponentSign == .paper {
                rule = "Paper covers rock"
                return .lose
            } else if opponentSign == .spock {
                rule = "Spock vaporizes rock"
            }
        case .paper:
            if opponentSign == .rock {
                // #20.5 assign the corresponding rule
                rule = "Paper covers rock"
                return .win
            } // #4 add winning against .spock
            else if opponentSign == .spock {
                // #20.5 assign the corresponding rule
                rule = "Paper disproves Spock"
                return .win
            } // #20.6 add the two losing cases and rules
            else if opponentSign == .scissors {
                rule = "Scissors cut paper"
                return .lose
            }  else if opponentSign == .lizard {
                rule = "Lizard eats paper"
            }
        case .scissors:
            if opponentSign == .paper {
                // #20.5 assign the corresponding rule
                rule = "Scissors cuts paper"
                return .win
            } // #4 add winning against .lizard
            else if opponentSign == .lizard {
                // #20.5 assign the corresponding rule
                rule = "Scissors decapitates lizard"
                return .win
            } // // #20.6 add the two losing cases and rules
            else if opponentSign == .spock {
                rule = "Spock smashes scissors"
                return .lose
            } else if opponentSign == .rock {
                rule = "Rock crushes scissors"
            }
        // #5 add .lizard case and the two winning comparisons for .spock & .paper
        case .lizard:
            if opponentSign == .spock {
                // #20.5 assign the corresponding rule
                rule = "Lizard poisons Spock"
                return .win
            } else if opponentSign == .paper {
                // #20.5 assign the corresponding rule
                rule = "Lizard eats paper"
                return .win
            } // // #20.6 add the two losing cases and rules
            else if opponentSign == .rock {
                rule = "Rock crushes lizard"
                return .lose
            } else if opponentSign == .scissors {
                rule = "Scissors decapitates lizard"
                return .lose
            }
        // #5 add .spock case and the two winning comparisons for .rock & .scissors
        case .spock:
            if opponentSign == .rock {
                // #20.5 assign the corresponding rule
                rule = "Spock vaporizes rock"
                return .win
            } else if opponentSign == .scissors {
                // #20.5 assign the corresponding rule
                rule = "Spock smashes scissors"
                return .win
            } // // #20.6 add the two losing cases and rules
            else if opponentSign == .lizard {
                rule = "Lizard poisons Spock"
                return .lose
            } else if opponentSign == .paper {
                rule = "Paper disproves Spock"
                return .lose
            }
        }
        // #20.4 assign rule to an empty string
        rule = ""
        return .lose
    }
}


