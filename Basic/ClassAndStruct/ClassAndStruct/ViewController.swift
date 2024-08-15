//
//  ViewController.swift
//  ClassAndStruct
//
//  Created by Ruslan Liulka on 15.08.2024.

import UIKit

class Animal {
    var name: String = ""
    var age: Int = 0
    
    init() {
        print("Animal - init!")
    }
    
    func move() {
        print("I can move")
    }
    
    deinit {
        print("Animal - deinit!")
    }
}

class Fish: Animal {
    
}

class Bird: Animal {
    override func move() {
        super.move()
        print("I can fly!")
    }
}

struct House {
    var numberOfRooms: Int
    var height: Float
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        func doSomthing() {
            let animal1 = Animal()
            animal1.move()
        }
        doSomthing()
        
        let fish1 = Fish()
        fish1.move()
        
        let bird1 = Bird()
        bird1.move()
        
        let house = House(numberOfRooms: 0, height: 2.2)
            
    }


}

