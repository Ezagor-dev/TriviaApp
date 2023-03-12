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
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
