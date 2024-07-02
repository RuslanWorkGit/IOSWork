//
//  ViewController.swift
//  IfElse
//
//  Created by Ruslan Liulka on 01.07.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let first = 1
    let second = 2
    let third = 3
    let fourth = 5
    let fifth = 8
    let sixth = 13
    
    let a = 10
    let b = 3
    let c = 23
    let d = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var sum = first + second + third + fourth + fifth + sixth
        var mult = first * second * third * fourth * fifth * sixth
        
        print(sum)
        print(mult)
        
        sum -= 10
        print(sum)
        
        mult /= sum
        print(mult)
        
        print("Difference between mult and sum is \(mult - sum)")
        
        if a > b {
            print("1")
            
            if (a + b) < c {
                print("4")
            } else if (a - b) > c {
                print("5")
            }
        } else if a < b {
            print("2")
            
            if (a < c) || (b < c) {
                print("6")
            } else if ((a > d) && (c > d)) && (d > b) {
                print("7")
            }
        } else {
            print("3")
            
            if a < 0 {
                print("8")
            }
        }
    }


}


