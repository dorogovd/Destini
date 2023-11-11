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
        Story(storyText: ["You see a fork in the road."], userChoices: ["Take a left.", "Take a right."], correctAnswer: ["Take a right."]),
        Story(storyText: ["You see a tiger", "You find a treasure chest"], userChoices: ["Shout for help", "Play dead", "Open it", "Check for traps"], correctAnswer: ["Play dead", "Check for traps"])
      //  Story(storyText: "You find a treasure chest", userChoices: ["Open it", "Check for traps"], correctAnswer: "Check for traps")
    ]
    
    var storyNumber = 0
    var storyText = 0
    var userFirstChoiseText = 0
    var userSecondChoiseText = 1
    var userChoiseChecker = true
    
    func getStoryText() -> String {
        return story[storyNumber].storyText[storyText]
    }
    func getFirstChoiseText() -> String {
        return story[storyNumber].userChoices[userFirstChoiseText]
    }
    func getSecondChoiseText() -> String {
        return story[storyNumber].userChoices[userSecondChoiseText]
    }
    mutating func checkAnswer(_ userChoise: String) -> Bool {
        if userChoise == story[storyNumber].correctAnswer[0] {
            return userChoiseChecker
        } else {
            return userChoiseChecker == false
        }
    }
    mutating func nextStory(userChoise: Bool) {
        if storyNumber != story.endIndex-1 && userChoise{
            storyNumber += 1
            storyText = 1
            userFirstChoiseText = 2
            userSecondChoiseText = 3
            
        } else if storyNumber != story.endIndex-1 && userChoise == false {
            storyNumber += 1
            storyText = 0
            userFirstChoiseText = 0
            userSecondChoiseText = 1
        } else {
            storyNumber = 0
            storyText = 0
            userFirstChoiseText = 0
            userSecondChoiseText = 1
        }
    }
}
