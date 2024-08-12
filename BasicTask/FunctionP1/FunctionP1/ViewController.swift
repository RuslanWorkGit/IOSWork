//
//  ViewController.swift
//  FunctionP1
//
//  Created by Ruslan Liulka on 12.08.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        func represent(name: String, surname: String) -> String{
            name + " " + surname
        }
        
        func squareFunc(number: Double) -> Double {
            sqrt(number)
        }
        
        func doublePow(number: Double) -> Double {
            number * number
        }
        
        func mySumm(num1: Double, num2: Double) -> Double {
            squareFunc(number: num1) + doublePow(number: num2)
        }
        
        let me = represent(name: "Ruslan", surname: "Lyulka")
        print(me)
        
        let mySquare = squareFunc(number: 144)
        print(mySquare)
        
        let myDouble = doublePow(number: 13)
        print(myDouble)
        
        let mySumma = mySumm(num1: 100, num2: 10)
        print(mySumma)
        
        
        for i in 1...10 {
            for j in 1...10 {
                print(mySumm(num1: Double(i), num2: Double(j)))
            }
        }
    }


}

