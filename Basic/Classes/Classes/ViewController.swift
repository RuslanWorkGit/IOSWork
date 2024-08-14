//
//  ViewController.swift
//  Classes
//
//  Created by Ruslan Liulka on 14.08.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        class Animal {
            var name: String
            var age: Int
            
            init(n: String, a: Int) {
                name = n
                age = a
            }
            
            convenience init() {
                self.init(n: "", a: 0)
            }
            
            func eat() {
                print("I can eat!")
            }
        }
        
//        let animal1 = Animal()
//        animal1.name = "Tom"
//        animal1.age = 10
//        animal1.eat()
//        
//        
//        let animal2 = Animal()
//        animal2.name = "Bob"
//        animal2.age = 1
        
        let animal1 = Animal(n: "Tim", a: 12)
        let animal2 = Animal()
    }


}

