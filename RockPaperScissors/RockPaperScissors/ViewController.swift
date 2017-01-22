//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Winnie on 21/01/2017.
//  Copyright © 2017 Winnie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ComputerChoiceImage: UIImageView!

    @IBOutlet weak var PlayerChoiceImage: UIImageView!

    @IBOutlet weak var ResultLabel: UILabel!

    
    @IBOutlet weak var PlayerScoreLabel: UILabel!
    var playerScore = 0
    
    @IBOutlet weak var ComputerScoreLabel: UILabel!
    var computerScore = 0
    
    
    var choice = ["Rock", "Paper", "Scissors"]
        var playerChoice = "null"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func RockButton(sender: UIButton) {
        playerChoice = "Rock"
        PlayerChoiceImage.image = UIImage(named:"rock")
        computeResult()
    }
    
    @IBAction func PaperButton(sender: UIButton) {
        playerChoice = "Paper"
        PlayerChoiceImage.image = UIImage(named:"paper")
        computeResult()
    }
    
    @IBAction func ScissorsButton(sender: UIButton){
        playerChoice = "Scissors"
        PlayerChoiceImage.image = UIImage(named:"scissors")
        computeResult()
    }
    
    

    
    func computeResult(){
        let randomIndex = Int (arc4random_uniform(3))
        let computerChoice = choice[randomIndex]

        
        
        if computerChoice == "Rock"{
            ComputerChoiceImage.image = UIImage(named: "rock")
        }else if computerChoice == "Paper"{
            ComputerChoiceImage.image = UIImage(named: "paper")
        }else if computerChoice == "Scissors"{
            ComputerChoiceImage.image = UIImage(named: "scissors")
        }
        
        
        if playerChoice == "Rock" && computerChoice == "Rock" {
            ResultLabel.text = "Draw"
        }else if playerChoice == "Rock" && computerChoice == "Paper" {
            ResultLabel.text = "Computer Wins!"
            computerScore+=1
            ComputerScoreLabel.text = String(computerScore)
        }else if playerChoice == "Rock" && computerChoice == "Scissors" {
            ResultLabel.text = "You Win!"
            playerScore+=1
            PlayerScoreLabel.text = String(playerScore)
        }else if playerChoice == "Paper" && computerChoice == "Paper"{
            ResultLabel.text = "Draw"
        }else if playerChoice == "Paper" && computerChoice == "Rock"{
            ResultLabel.text = "You Win!"
            playerScore+=1
            PlayerScoreLabel.text = String(playerScore)
        }else if playerChoice == "Paper" && computerChoice == "Scissors"{
            ResultLabel.text = "Computer Wins!"
            computerScore+=1
            ComputerScoreLabel.text = String(computerScore)
        }else if playerChoice == "Scissors" && computerChoice == "Scissors"{
            ResultLabel.text = "Draw"
        }else if playerChoice == "Scissors" && computerChoice == "Paper" {
            ResultLabel.text = "You Win!"
            playerScore+=1
            PlayerScoreLabel.text = String(playerScore)
        }else if playerChoice == "Scissors" && computerChoice == "Rock"{
            ResultLabel.text = "Computer Wins!"
            computerScore+=1
            ComputerScoreLabel.text = String(computerScore)
        }
    }
    
    
}

