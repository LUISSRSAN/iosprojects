//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    
    var quizBrain = QuizBrain()
    
    
    
    var questionNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        quizBrain.checkAnswer(userAnswer)
        
     
        if userGotItRight {
            sender.backgroundColor=UIColor.green
        }else {
            sender.backgroundColor=UIColor.red
        }
        if questionNumber + 1 < quiz.count{
            questionNumber = questionNumber + 1
        }
        else {
            questionLabel.text = quiz[questionNumber].text
        }
        updateUI()
    }
    func updateUI(){
        questionLabel.text = quiz[questionNumber].text
        trueButton.backgroundColor=UIColor.clear
        falseButton.backgroundColor=UIColor.clear
    }
}

