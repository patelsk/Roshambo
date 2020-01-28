//
//  ViewController.swift
//  Roshambo
//
//  Created by Shyam Patel  on 6/7/19.
//  Copyright © 2019 Shyam Patel . All rights reserved.
//

import UIKit

class ChooseMoveViewController: UIViewController
{
    var game: RoshamboMatch!
    
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    
    @IBAction func chooseMove(_ sender: UIButton)
    {
        switch sender {
        case rockButton:
            playGame(RoshamboMove.rock)
        case paperButton:
            playGame(RoshamboMove.paper)
        case scissorsButton:
            playGame(RoshamboMove.scissors)
        default:
            print("Error in chooseMove()")
        }
    }
    
    func playGame(_ player: RoshamboMove)
    {
        let opponent = RoshamboMove()
        self.game = RoshamboMatch(player, opponent)
        
        if (player == RoshamboMove.rock)
        {
            var resultController = ResultViewController()
            resultController = storyboard!.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
            
            resultController.game = self.game
            self.present(resultController, animated: true)
        }
        else if (player == RoshamboMove.paper)
        {
            performSegue(withIdentifier: "paperSegue", sender: self)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
            let resultController = segue.destination as! ResultViewController
            resultController.game = self.game
    }
}

