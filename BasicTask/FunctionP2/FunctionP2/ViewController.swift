//
//  ViewController.swift
//  FunctionP2
//
//  Created by Ruslan Liulka on 12.08.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        func represented(name: String = "", work: String = "Persone", vacationDays: Int = 0) {
            print("My name is \(name), I am \(work), and I have \(vacationDays) for my vacation")
        }
        
        represented(name: "Ruslan")
        represented(name: "Ruslan", work: "Programer")
        represented(name: "Ruslan", work: "IOSDeveloper", vacationDays: 21)
        
        func sum(line1: String, line2: String) -> String {
            line1 + " " + line2
        }
        
        func sum(floatingNum1: Float, floatingNum2: Float) -> Float {
            floatingNum1 + floatingNum2
        }
        
        func sum(num1: Int, num2: Int) -> Int {
            num1 + num2
        }
        
        let moon = "Moonlight"
        let shine = "Shine"
        
        let fl1: Float = 123.1
        let fl2: Float = 123.9
        
        let nm1 = 17
        let nm2 = 13
        
        print(sum(line1: moon, line2: shine))
        print(sum(floatingNum1: fl1, floatingNum2: fl2))
        print(sum(num1: nm1, num2: nm2))
        
        
        func clouserTest(name: String, clouser: (String) -> ()) {
            clouser(name)
        }
        
        clouserTest(name: "Ruslan") { someName in
            if someName.isEmpty {
                print("Bob")
            } else {
                print(someName)
            }
        }
        
        clouserTest(name: "") { someName in
            if someName.isEmpty {
                print("Bob")
            } else {
                print(someName)
            }
        }
    }


}

