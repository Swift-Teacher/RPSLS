//
//  ViewController.swift
//  RPS
//
//  Created by Brian Foutty on 3/10/21.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - IB Properties (outlets)
    
    @IBOutlet weak var opponentSignLabel: UILabel!
    @IBOutlet weak var gameStatusLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorButton: UIButton!
    // #8 add lizard and spock button outlets
    @IBOutlet weak var lizardButton: UIButton!
    @IBOutlet weak var spockButton: UIButton!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    // added this so that the computer representation can be any one of these to make UI more fun
    // #17.2 create variable array of emoji
    var opponentPersona = ["👨🏻‍💻", "🤖", "🖥", "😳", "😡", "🥲", "🥷"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI(forState: .start)
    }

    // MARK: - IB Actions
    @IBAction func rockChosen(_ sender: Any) {
        play(userSign: .rock)
    }
    
    @IBAction func paperChosen(_ sender: Any) {
        play(userSign: .paper)
    }
    
    @IBAction func scissorChosen(_ sender: Any) {
        play(userSign: .scissors)
    }
    // #9 add IBAction for lizard button
    @IBAction func lizardChosen(_ sender: Any) {
        // #13 add play() function call for .lizard
        play(userSign: .lizard)
    }
    // #9 add IBAction for spock button
    @IBAction func spockChosen(_ sender: Any) {
        // #13 add play() function call for .spock
        play(userSign: .spock)
    }
    
    
    @IBAction func playAgainTapped(_ sender: Any) {
        updateUI(forState: .start)
    }
    
    func updateUI(forState state: GameState) {
        gameStatusLabel.text = state.status
        
        switch state {
        case .start:
            view.backgroundColor = .lightGray
            
            // #17.3 assign opponentSignLabel.text to be a random element from the variable array of emoji
            opponentSignLabel.text = opponentPersona.randomElement() // makes the opponent a random emoji

            playAgainButton.isHidden = true
            resultLabel.isHidden = true
            
            rockButton.isHidden = false
            paperButton.isHidden = false
            scissorButton.isHidden = false
            // #10 add lizardButton and spockButton
            lizardButton.isHidden = false
            spockButton.isHidden = false
             
            rockButton.isEnabled = true
            paperButton.isEnabled = true
            scissorButton.isEnabled = true
            // #10 add lizardButton and spockButton
            lizardButton.isEnabled = true
            spockButton.isEnabled = true
            
        case .win:
            view.backgroundColor = UIColor(red: 0.651, green: 0.792, blue: 0.651, alpha: 1)
        case .lose:
            view.backgroundColor = UIColor(red: 0.851, green: 0.424, blue: 0.412, alpha: 1)
        case .draw:
            view.backgroundColor = UIColor(red: 0.663, green: 0.663, blue: 0.663, alpha: 1)
        }
    }
    
    func play(userSign: Sign) {
        let computerSign = randomSign()
        
        let gameState = userSign.gameState(against: computerSign)
        updateUI(forState: gameState)
        
        opponentSignLabel.text = computerSign.emoji
        // adds description of the game result
        resultLabel.isHidden = false
        resultLabel.text = result
        
        rockButton.isHidden = true
        paperButton.isHidden = true
        scissorButton.isHidden = true
        // #11 add lizardButton and spockButton
        lizardButton.isHidden = true
        spockButton.isHidden = true
        
        rockButton.isEnabled = false
        paperButton.isEnabled = false
        scissorButton.isEnabled = false
        // #11 add lizardButton and spockButton
        lizardButton.isEnabled = false
        spockButton.isEnabled = false
        
        switch userSign {
        case .rock:
            rockButton.isHidden = false
        case .paper:
            paperButton.isHidden = false
        case .scissors:
            scissorButton.isHidden = false
            // #12 add cases for .lizard and .spock
        case .lizard:
            lizardButton.isHidden = false
        case .spock:
            spockButton.isHidden = false
        }
        
        playAgainButton.isHidden = false
    }
    
}

