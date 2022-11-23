//
//  Answer.swift
//  eight-ball
//
//  Created by Nathan Podesta on 22/11/2022.
//

import Foundation

enum AnswerType {
    case affirmative
    case unsure
    case negative
}

class Answer {
    var type: AnswerType
    var message: String
    //TODO: add missing code
    
    init(type: AnswerType, message: String) {
        self.type = type
        self.message = message
    }
}
