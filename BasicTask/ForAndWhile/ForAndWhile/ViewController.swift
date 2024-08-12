//
//  ViewController.swift
//  ForAndWhile
//
//  Created by Ruslan Liulka on 12.08.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let weekDays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Satuday", "Sunday"]
        
        for (index, day) in weekDays.enumerated() where index < 3{
            print("\(index + 1) - Today is \(day)")
        }
        
        let ages = [12, 43, 22, 23, 21, 20, 18, 17, 25, 46, 21, 23, 56]
        
        for age in ages {
            print("I am \(age) years old")
            
            if age < 18 {
                print("Child")
                print("I have been celebrated: ")
                for birthday in 1...age {
                    print("\(birthday) years")
                }
            } else {
                print("Adult")
            }
        }
    }


}

