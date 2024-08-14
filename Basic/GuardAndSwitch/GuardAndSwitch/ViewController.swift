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
        
        func printKidsAge(age: Int) {
            
            guard age < 18 else {
                print("I am not a kid")
                return
            }
            print(age)
        }
        
        printKidsAge(age: 19)
        
        let age = 14
        
        switch age {
        case 14: print("Cann't drive")
        case 28: print("Can drive")
        default: print("??????")
        }
        
        switch age {
        case 0...16: print("Cann't drive")
        case 17...70: print("Can drive")
        case 71...100: print("Cann't drive")
        default: print("??")
        }
        
        let isCarOwner = true
        switch age {
        case 0...16: print("Cann't drive")
        case 17...70 where isCarOwner: print("Can drive")
        case 71...100: print("Cann't drive")
        default: print("??")
        }

    }


}

