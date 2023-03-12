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
    
    let quiz = [
        Question(q: "The Great Wall of China is visible from space.", a: "False"),
          Question(q: "The smallest country in the world by land area is Monaco.", a: "False"),
          Question(q: "The longest river in Africa is the Congo River.", a: "False"),
          Question(q: "The national animal of Australia is the kangaroo.", a: "True"),
          Question(q: "The capital of Canada is Vancouver.", a: "False"),
          Question(q: "The Eiffel Tower in Paris, France was originally intended to be a temporary structure.", a: "True"),
          Question(q: "The largest organ in the human body is the liver.", a: "False"),
          Question(q: "The name 'Kobe Bryant' was inspired by the famous Japanese beef.", a: "True"),
          Question(q: "The first computer programmer in history was a woman named Ada Lovelace.", a: "True"),
          Question(q: "The first video ever uploaded to YouTube was titled 'Me at the zoo'.", a: "True")

        
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle //True, False
        let actualAnswer = quiz[questionNumber].answer
        
        
        if userAnswer == actualAnswer{
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        
        
        if(questionNumber + 1 < quiz.count){
            questionNumber += 1
            
        }else{
            questionNumber = 0
        }
        Timer.scheduledTimer(timeInterval: 0.2, target:self, selector: #selector(updateUI), userInfo:nil, repeats: false)
        
        
        
        
    }
    
    @objc func updateUI(){
        questionLabel.text = quiz[questionNumber].text
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
    }
    
}

