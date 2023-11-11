//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    let storyText: String
    let userChoices: [String]
    let correctAnswer: String
    
    init(storyText: String, userChoices: [String], correctAnswer: String) {
        self.storyText = storyText
        self.userChoices = userChoices
        self.correctAnswer = correctAnswer
    }
}
