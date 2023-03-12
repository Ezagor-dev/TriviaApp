//
//  QuizBrain.swift
//  Trivia
//
//  Created by Ezagor on 12.03.2023.
//

import Foundation

struct QuizBrain{
    var questionNumber = 0
    var score = 0
    
    
//    let quiz = [
//        Question(q: "The Great Wall of China is visible from space.", a: "False"),
//        Question(q: "The smallest country in the world by land area is Monaco.", a: "False"),
//        Question(q: "The longest river in Africa is the Congo River.", a: "False"),
//        Question(q: "The national animal of Australia is the kangaroo.", a: "True"),
//        Question(q: "The capital of Canada is Vancouver.", a: "False"),
//        Question(q: "The Eiffel Tower in Paris, France was originally intended to be a temporary structure.", a: "True"),
//        Question(q: "The largest organ in the human body is the liver.", a: "False"),
//        Question(q: "The name 'Kobe Bryant' was inspired by the famous Japanese beef.", a: "True"),
//        Question(q: "The first computer programmer in history was a woman named Ada Lovelace.", a: "True"),
//        Question(q: "The first video ever uploaded to YouTube was titled 'Me at the zoo'.", a: "True")
//
//
//    ]
    
    let quiz = [
            Question(q: "Which is the largest organ in the human body?", a: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
            Question(q: "Five dollars is worth how many nickels?", a: ["25", "50", "100"], correctAnswer: "100"),
            Question(q: "What do the letters in the GMT time zone stand for?", a: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
            Question(q: "What is the French word for 'hat'?", a: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
            Question(q: "In past times, what would a gentleman keep in his fob pocket?", a: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
            Question(q: "How would one say goodbye in Spanish?", a: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
            Question(q: "Which of these colours is NOT featured in the logo for Google?", a: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
            Question(q: "What alcoholic drink is made from molasses?", a: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
            Question(q: "What type of animal was Harambe?", a: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
            Question(q: "Where is Tasmania located?", a: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
        ]
    
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].rightAnswer{
            //User got it right
            score += 1
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
    
    func getAnswers() -> [String] {
        return quiz[questionNumber].answers
        }
    
    
    //progressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
    
    func getProgress() -> Float{
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func nextQuestion(){
        if(questionNumber + 1 < quiz.count){
            questionNumber += 1
            
        }else{
            questionNumber = 0
            score = 0
        }
    }
    
    // let userGotItRight = quizBrain.checkAnswer(userAnswer)
    
    func getScore() -> Int{
        return score
        }
    }
    

