//
//  Question.swift
//  Quizzler
//
//  Created by Giovanna Rodrigues on 13/09/21.
//

import Foundation

struct Question {
    let text : String
    let answer : [String]
    let correctAnswer : String
    
    init(q : String, a: [String], ca : String)
    {
        text = q
        answer = a
        correctAnswer = ca
    }
}

