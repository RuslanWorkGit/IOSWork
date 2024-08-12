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
        func summ(number1 value1: Int,number2 value2: Int) -> Int {
            value1 + value2
        }
        
        //print(summ(value1: 123, value2: 123))
        //print(summ(123, 123))
        //print(summ(number1: 123, number2: 123))
        
        func mult(value1: Int, value2: Int = 10) -> Int {
            value1 * value2
        }
        
        print(mult(value1: 12, value2: 12))
        print(mult(value1: 10))
        
        //перегрузка функцій
        func doSomeStuff(line: String) {
            
        }
        
        func doSomeStuff(num: Int) {
            
        }
        
        func doSomeStuff(val: Bool) {
            
        }
        
        doSomeStuff(num: 12)
        
        //рекурсія
        
        func doSomeImportantStuff() {
            doSomeImportantStuff()
        }
        
        //clouser
        
        func doIt(clouser: (String) -> ()) {
            clouser("Hey!")
        }
        
        doIt(clouser: { someValue in
            print(someValue)
        })
    }


}

