//
//  QuizBrain.swift
//  Trivia
//
//  Created by Ezagor on 12.03.2023.
//

import Foundation

struct QuizBrain{
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
    
    
    func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer{
            //User got it right
            return true
        }else{
            //User got it wrong
            return false
        }
        
    }
    // questionLabel.text = quiz[questionNumber].text
    
    func getQuestionText() -> String{
        return quiz[questionNumber].text
        
    }
    
    
    
    //progressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
    
    func getProgress() -> Float{
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    func nextQuestion(){
        if(questionNumber + 1 < quiz.count){
            questionNumber += 1
            
        }else{
            questionNumber = 0
        }
    }
    
}
