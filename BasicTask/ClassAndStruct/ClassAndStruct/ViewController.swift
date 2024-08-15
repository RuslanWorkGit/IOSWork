//
//  ViewController.swift
//  ClassAndStruct
//
//  Created by Ruslan Liulka on 15.08.2024.
//

import UIKit

class Calculator {
    
    func add(a: Double, b: Double) -> Double {
        a + b
    }
    
    func minus(a: Double, b: Double) -> Double {
        if a > b {
            return a - b
        } else {
            return b - a
        }
    }
    
    func mult(a: Double, b: Double) -> Double {
        a * b
    }
    
    func div(a: Double, b: Double) -> Double {
        a / b
    }
    
    func remainder(a: Double, b: Double) -> Double {
        a.truncatingRemainder(dividingBy: b)
    }

}


class SuperCalculator: Calculator {
    func myPow(num: Double, pow: Int) -> Double {
        if pow == 0 {
            return 1
        } else if pow == 1 {
            return num
        } else {
            let result = num * myPow(num: num, pow: pow - 1)
            return result
        }
    }
    
    func getPercent(num: Double, percent: Double) -> Double {
        let onePercent = num / 100
        let result = percent * onePercent
        return result
    }
    
    override func add(a: Double, b: Double) -> Double {
        print("I am SuperCalculator!")
        return a + b
    }
    
    override func minus(a: Double, b: Double) -> Double {
        print("I am SuperCalculator")
        if a > b {
            return a - b
        } else {
            return b - a
        }
    }
    
    override func mult(a: Double, b: Double) -> Double {
        print("I am SuperCalculator")
        return a * b
    }
    
    override func div(a: Double, b: Double) -> Double {
        print("I am SuperCalculator")
        return a / b
    }
    
    override func remainder(a: Double, b: Double) -> Double {
        print("I am SuperCalculator")
        return a.truncatingRemainder(dividingBy: b)
    }
    
}
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let myCalc = SuperCalculator()
        let resultOfPow = myCalc.myPow(num: 10, pow: 3)
        print(resultOfPow)
        
        let percentResult = myCalc.getPercent(num: 100.0, percent: 3.4)
        print(percentResult)
        
    }


}

