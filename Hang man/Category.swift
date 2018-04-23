//
//  Category.swift
//  Hang man
//
//
//  Created by Andy on 12/29/16.
//  Copyright © 2016 Andy Phan. All rights reserved.
//

import UIKit

/**
* The Category class provides a set of different categories.
*/
class Category {
    
    var word: String?
    var categoryName: String?
    var description: String?
    
    // Catogeries of word and its description
    var animal: [Int: (name: String, clue: String)]! = [
        1 : ("Turtle", "TMNT"),
        2 : ("Narwhal", "Where unicorn horns come from"),
        3 : ("Dog", "Man's best friend"),
        4 : ("Snake", "Planes and Ladders"),
        5 : ("Shark", "Fish are friends, not food")
    ]
    
    var technology: [Int: (name: String, clue: String)]! = [
        1 : ("Console", "XBOX, Playstation, Wii"),
        2 : ("Cellphone", "Mobile device"),
        3 : ("Internet", "World Wide Web"),
        4 : ("Computer", "PC Master Race"),
        5 : ("Vehicles", "Transportation")
    ]
    var months: [Int: (name: String, clue: String)]! = [
        1 : ("October", "Trick or Treat"),
        2 : ("December", "The Holidays"),
        3 : ("January", "It's a New Year"),
        4 : ("April", "Jokes and Pranks"),
        5 : ("May", "End of the Spring term")
    ]
    var jedi : [Int: (name: String, clue: String)]! = [
        1 : ("Windu", "Samuel L Jackson"),
        2 : ("Anakin", "Darth Vader"),
        3 : ("Kenobi", "These are not the droids you are looking for"),
        4 : ("Luke", "I am a jedi, like my father before me"),
        5 : ("Yoda", "Do or do not, there is no try")
    ]
    var country : [Int: (name: String, clue: String)]! = [
        1 : ("America", "Land of the Free"),
        2 : ("Greece", "Cradle of Western Civilization"),
        3 : ("Japan", "Land of the Rising Sun"),
        4 : ("France" , "World's center of Art and Culture"),
        5 : ("Italy", "Land of Song and History")
    ]
    var sport : [Int: (name: String, clue: String)]! = [
        1 : ("Soccer", "Also known as Football in some places"),
        2 : ("Tennis", "Singles, Doubles, Deuces, Drop shots"),
        3 : ("Hiking", "Taking the trail"),
        4 : ("Football", "The American sport"),
        5 : ("Baseball", "Those home runs")
    ]
    
    /**
    * The function pick the selected category and grab a random word
    * from it. Then, it initializes the word and description
    *
    * @param: categoryName - name of the desired category
    * @return: None
    */
    func getRandomWord(categoryName: String){
        var category = Dictionary<Int, (name: String, clue: String)>()
        
        switch categoryName.lowercaseString {
        case "sport":
            category = sport
            self.categoryName = "Sport"
        case "country":
            category = country
            self.categoryName = "Country"
        case "jedi":
            category = jedi
            self.categoryName = "Jedi"
        case "months":
            category = months
            self.categoryName = "Months"
        case "technology":
            category = technology
            self.categoryName = "Technology"
        case "animal":
            category = animal
            self.categoryName = "Animal"
        default:
            self.word = nil
        }
        
        // Selecting a random word
        let randomNum = Int(arc4random_uniform(4) + 1)
        self.word = category[randomNum]!.name
        self.description = category[randomNum]!.clue
    }
}

