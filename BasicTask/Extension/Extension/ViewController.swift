//
//  ViewController.swift
//  Extension
//
//  Created by Ruslan Liulka on 22.08.2024.
//

import UIKit

extension Int {
    func squre() -> Int {
        self * self
    }
}

extension String {
    func getFirstWord() -> String {
        let word = self.components(separatedBy: " ")
        
        if let firstWord = word.first {
            print(firstWord)
            return firstWord
        } else {
            print("Text is empty!")
            return "Text is empty!"
        }
    }
    
    func getFirstBeforeKoma() -> String {
        let text = components(separatedBy: ",")
        
        if let komaText = text.first {
            print(komaText)
            return komaText
        } else {
            print("Text is not contain koma!")
            return "Text is not contain koma!"
        }
    }
    
    func getFirstSentences() -> String {
        let sentences = self.components(separatedBy: ".")
        
        if let firstSentences = sentences.first {
            print(firstSentences)
            return firstSentences
        } else {
            print("Text is not contain sentences or dot!")
            return "Text is not contain sentences or dot!"
        }
    }
    
    func getExclamationMartSentences() -> [String] {
        let senteces = self.components(separatedBy: ["."])
        
        let sentencesWithExclamatioMark = senteces.filter { sentences in
            return senteces.contains("!")
        }
        
        return sentencesWithExclamatioMark
    }
}

protocol Runable {
    func run()
}

protocol Flyable {
    func fly()
}

protocol Alive {
    func breath()
    func eat()
    func grow()
}

extension Alive {
    func breath() {
        print("breath")
    }
    
    func eat() {
        print("eat")
    }
}

struct Ruslan: Alive, Runable {
    func grow() {
        print("grow")
    }
    
    func run() {
        print("run")
    }
}

struct SpiderMan: Alive {
    func grow() {
        print("grow")
    }
}

struct Yana: Alive {
    func grow() {
        print("grow")
    }
}

struct BirdMan: Alive, Flyable {
    func grow() {
        print("grow")
    }
    
    func fly() {
        print("fly")
    }
}

struct Bird: Flyable {
    func fly() {
        print("fly")
    }
}

struct Arsen: Alive, Runable, Flyable {
    func grow() {
        print("grow")
    }
    
    func run() {
        rint("run")
    }
    
    func fly() {
        print("fly")
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(10.squre())
        
        let myText = "The sun is shining brightly today! What a beautiful morning. I can't believe how warm it is outside! Let's go for a walk in the park. The flowers are blooming everywhere! It's the perfect day for an adventure."
        
        myText.getFirstWord()
        myText.getFirstSentences()
        myText.getFirstBeforeKoma()
        print(myText.getExclamationMartSentences())
        
        let me = Ruslan()
        let yana = Yana()
        let spiderMan = SpiderMan()
        let birdMan = BirdMan()
        let bird = Bird()
        let arsen = Arsen()
            
    }


}

