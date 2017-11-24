//
//  ViewController.swift
//  WarApp
//
//  Created by Joel Elliott on 11/21/17.
//  Copyright © 2017 Joel Elliott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftCardView: UIImageView!
    
    @IBOutlet weak var rightCardView: UIImageView!
    
    @IBOutlet weak var playerScoreView: UILabel!
    
    @IBOutlet weak var cpuScoreView: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: UIButton) {
        
        
        //randomize two numbers
        let leftRandomNumber = arc4random_uniform(13) + 2
        let rightRandomNumber = arc4random_uniform(13) + 2

        leftCardView.image = UIImage(named: "card\(leftRandomNumber)")
        
        rightCardView.image = UIImage(named: "card\(rightRandomNumber)")
        
        //compare the numbers
        if leftRandomNumber > rightRandomNumber {
            //Update score
            leftScore += 1
            
            //Update Label
            playerScoreView.text = String(leftScore)
            
        } else if rightRandomNumber > leftRandomNumber {
            //Update score
            rightScore += 1
            
            //Update Label
            cpuScoreView.text = String(rightScore)
        } else if rightRandomNumber == leftRandomNumber {
            
            print ("Tie!")
            
            
        }
        
        
        
    }
    
    
}

