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
    
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorButton: UIButton!
    @IBOutlet weak var lizardButton: UIButton!
    @IBOutlet weak var spockButton: UIButton!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    
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
    
    @IBAction func lizardChosen(_ sender: Any) {
        play(userSign: .lizard)
    }
    
    @IBAction func spockChosen(_ sender: Any) {
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
            
            opponentSignLabel.text = "📱"
            playAgainButton.isHidden = true
            
            rockButton.isHidden = false
            paperButton.isHidden = false
            scissorButton.isHidden = false
            lizardButton.isHidden = false
            spockButton.isHidden = false
            
            rockButton.isEnabled = true
            paperButton.isEnabled = true
            scissorButton.isEnabled = true
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
        
        rockButton.isHidden = true
        paperButton.isHidden = true
        scissorButton.isHidden = true
        lizardButton.isHidden = true
        spockButton.isHidden = true
        
        rockButton.isEnabled = false
        paperButton.isEnabled = false
        scissorButton.isEnabled = false
        lizardButton.isEnabled = false
        spockButton.isEnabled = false
        
        switch userSign {
        case .rock:
            rockButton.isHidden = false
        case .paper:
            paperButton.isHidden = false
        case .scissors:
            scissorButton.isHidden = false
        case .lizard:
            lizardButton.isHidden = false
        case .spock:
            spockButton.isHidden = false
        }
        
        playAgainButton.isHidden = false
    }
    
}

