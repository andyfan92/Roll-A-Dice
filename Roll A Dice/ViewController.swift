//
//  ViewController.swift
//  Roll A Dice
//
//  Created by fan on 9/11/21.
//  Copyright © 2021 edu.northeastern.fya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgOne: UIImageView!
    @IBOutlet weak var imgTwo: UIImageView!
    @IBOutlet weak var lblScore: UILabel!
    var score = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func below7Pressed(_ sender: Any) {
        let one =  Int.random(in: 1...6)
        let two =  Int.random(in: 1...6)
        
        let imageOneName = "Dice\(one)"
        let imageTwoName = "Dice\(two)"
        
        imgOne.image = UIImage(named: imageOneName)
        imgTwo.image = UIImage(named: imageTwoName)
        
        if one + two < 7 {
            score+=1
        } else {
            score-=1
        }
        
        lblScore.text = "Score = \(score)"
        
    }
    @IBAction func lucky7Pressed(_ sender: Any) {
        let one =  Int.random(in: 1...6)
        let two =  Int.random(in: 1...6)
        
        let imageOneName = "Dice\(one)"
        let imageTwoName = "Dice\(two)"
        
        imgOne.image = UIImage(named: imageOneName)
        imgTwo.image = UIImage(named: imageTwoName)
        
        if one + two == 7 {
            score+=7
        } else {
            score-=7
        }
        
        lblScore.text = "Score = \(score)"
        
    }
    @IBAction func above7Pressed(_ sender: Any) {
        let one =  Int.random(in: 1...6)
        let two =  Int.random(in: 1...6)
        
        let imageOneName = "Dice\(one)"
        let imageTwoName = "Dice\(two)"
        
        imgOne.image = UIImage(named: imageOneName)
        imgTwo.image = UIImage(named: imageTwoName)
        
        if one + two > 7 {
            score+=1
        } else {
            score-=1
        }
        
        lblScore.text = "Score = \(score)"
        
    }
}

