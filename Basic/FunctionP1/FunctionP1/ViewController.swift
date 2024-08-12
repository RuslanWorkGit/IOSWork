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
        
        func printStar() {
            print("*")
            print("*")
        }
        
        print("1")
        printStar()
        print("2")
        printStar()
        
        //------------------------------------------------------------------------------------
        
        func one() {
            print("1")
        }
        
        func two() {
            print("2")
        }
        
        one()
        two()
        //------------------------------------------------------------------------------------
        
        func printMyAdress(country: String, city: String) {
            
            print("I am from \(country), and I live in \(city) city")
        }
        
        printMyAdress(country: "Ukraine", city: "Kyiv")
        printMyAdress(country: "Ukraine", city: "Kalininvka")
        
        //------------------------------------------------------------------------------------
        
        func mult(num1: Int, num2: Int) -> Int {
            num1 * num2
        }
        
        let number = mult(num1: 10, num2: 12)
        print(number)
    }


}

