//
//  Question.swift
//  Trivia
//
//  Created by Ezagor on 12.03.2023.
//  Copyright © 2023 Ezagor. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answers: [String]
    let rightAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        text = q
        answers = a
        rightAnswer = correctAnswer
    }
}
