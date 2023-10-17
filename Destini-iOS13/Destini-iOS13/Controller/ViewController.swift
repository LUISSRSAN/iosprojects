//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let buttonTitle = sender.currentTitle
        
            if buttonTitle == story1.choice1{
            print(story1)
        }
            else if buttonTitle == story2.choice2 {
            print(story2)
        }
    }
    
   var story0 = "You see a fork in the road"
   var choice1 = "Take a left."
    var choice2 = "Take a right."
    
 
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = story0
  
    }


}

