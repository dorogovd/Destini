//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain {
    let story = [
        Story(storyText: "You see a fork in the road.", userChoices: ["Take a left.", "Take a right."], correctAnswer: "Take a right."),
        Story(storyText: "You see a tiger", userChoices: ["Shout for help", "Play dead"], correctAnswer: "Play dead"),
        Story(storyText: "You find a treasure chest", userChoices: ["Open it", "Check for traps"], correctAnswer: "Check for traps")
    ]
    
    var storyNumber = 0
    var userChoise = true
    
    func getStoryText() -> String {
        return story[storyNumber].storyText
    }
    func getFirstChoiseText() -> String {
        return story[storyNumber].userChoices[0]
    }
    func getSecondChoiseText() -> String {
        return story[storyNumber].userChoices[1]
    }
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == story[storyNumber].correctAnswer {
            return userChoise
        } else {
            return userChoise == false
        }
    }
    mutating func nextStory(userChoise: Bool) {
        if storyNumber != story.endIndex-1 && userChoise{
            storyNumber += 2
        } else if storyNumber != story.endIndex-1 && userChoise == false {
            storyNumber += 1
        } else {
            storyNumber = 0
        }
    }
}
