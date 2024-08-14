//
//  ViewController.swift
//  GuardAndSwitch
//
//  Created by Ruslan Liulka on 14.08.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        let passingScore = 160
        let myScore = 165
        
        if myScore > passingScore {
            print("Congratulate!")
        } else {
            print("Bad news!")
        }
        
        func checkScore(myScore: Int, passScore: Int) {
            guard myScore > passScore else {
                print("Bad news!")
                return
            }
            
            print("Congratilation!")
        }
        
        let checkResult = myScore > passingScore ? "Congratulation" : "Bad news!"
        
        checkScore(myScore: myScore, passScore: passingScore)
        print(checkResult)
        
        
        let weekDay = 6
        let weekend = true
        
        switch weekDay {
        case 1: print("Monday")
        case 2: print("Tuesday")
        case 3: print("Wednesday")
        case 4: print("Thursday")
        case 5: print("Friday")
        case 6 where weekend:
            print("Saturday")
            fallthrough
        case 7 where weekend: print("Sunday")
        default:
            "Uknown day"
        }
    }


}

