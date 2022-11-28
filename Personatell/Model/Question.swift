//
//  Question.swift
//  Personatell
//
//  Created by Can on 28.11.2022.
//

import Foundation

struct Question {
    let title: String
    let answers: [Answer]
    
    static func mock() -> [Question] {
        return [
            Question(title: "You’re really busy at work and a colleague is telling you their life story and personal woes. You:",
                     answers: [
                        Answer(title: "Don’t dare to interrupt them"),
                        Answer(title: "Think it’s more important to give them some of your time; work can wait"),
                        Answer(title: "Listen, but with only with half an ear"),
                        Answer(title: "Interrupt and explain that you are really busy at the moment"),
                     ]),
            Question(title: "You’ve been sitting in the doctor’s waiting room for more than 25 minutes. You:",
                     answers: [
                        Answer(title: "Look at your watch every two minutes"),
                        Answer(title: "Bubble with inner anger, but keep quiet"),
                        Answer(title: "Explain to other equally impatient people in the room that the doctor is always running late"),
                        Answer(title: "Complain in a loud voice, while tapping your foot impatiently"),
                     ]),
            Question(title: "You’re having an animated discussion with a colleague regarding a project that you’re in charge of. You:",
                     answers: [
                        Answer(title: "Don’t dare contradict them"),
                        Answer(title: "Think that they are obviously right"),
                        Answer(title: "Defend your own point of view, tooth and nail"),
                        Answer(title: "Continuously interrupt your colleague"),
                     ]),
            Question(title: "You are taking part in a guided tour of a museum. You:",
                     answers: [
                        Answer(title: "Are a bit too far towards the back so don’t really hear what the guide is saying"),
                        Answer(title: "Follow the group without question"),
                        Answer(title: "Make sure that everyone is able to hear properly"),
                        Answer(title: "Are right up the front, adding your own comments in a loud voice"),
                     ]),
            Question(title: "During dinner parties at your home, you have a hard time with people who:",
                     answers: [
                        Answer(title: "Ask you to tell a story in front of everyone else"),
                        Answer(title: "Talk privately between themselves"),
                        Answer(title: "Hang around you all evening"),
                        Answer(title: "Always drag the conversation back to themselves"),
                     ]),
        ]
    }
}

struct Answer {
    let title: String
}

