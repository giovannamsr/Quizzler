//
//  Question.swift
//  Quizzler
//
//  Created by Marcelo Rodrigues de Sousa on 13/09/21.
//

import Foundation

struct Question {
    let text : String
    let answer : String
    
    init(q : String, a : String)
    {
        text = q
        answer = a
    }
}
