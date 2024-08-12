//
//  ViewController.swift
//  ForInWhile
//
//  Created by Ruslan Liulka on 02.07.2024.
//

import UIKit

class ViewController: UIViewController {
    let animals = ["Cat", "Dog", "Wolf", "Fox", "Elephant", "Horse", "Mouse", "Rabbit"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 1...3 {
            print("Hello!")
        }
         
        for animal in animals {
            print(animal)
            print(animal.count)
        }
        
        for animal in animals where animal != "Dog" {
            print(animal)
        }
        
        for animal in animals where animal.count > 3 {
            print(animal)
        }
        
        for (index, animal) in animals.enumerated() {
            print(index)
            print(animal)
        }
        
        for index in 1...10 {
           
            if index == 5 {
                continue
            }
            
            print(index)
            
        }
        
        var i = -10
        
        while i < 0 {
            print(i)
            
            i += 1
        }
    }


}

