//
//  ViewController.swift
//  Optional
//
//  Created by Ruslan Liulka on 16.08.2024.
//

import UIKit

class A {
    var someValue: B?
}

class B {
    var text: String = "Text!"
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let optinalString: String? = "Some text!"
        let optionalInt: Int? = 84
        let optionalBool: Bool? = true
        let optionalFloat: Float? = nil
        
        let unwrapedString = optinalString ?? ""
        print(unwrapedString)
        
        if let unwrapInt = optionalInt {
            print("Unwraped int is \(unwrapInt)")
        } else {
            print("This is nil!!!")
        }
        
        func unwrapedFunction(someValue: Any?) {
            guard let someValue = someValue else {
                print("This is nill!!!")
                return
            }
            
            print("Unwraped value is: \(someValue)")
        }
        
        unwrapedFunction(someValue: optionalBool)
        unwrapedFunction(someValue: optionalFloat)
        
        let newB = B()
        newB.text = "Some new Text!"
        
        let newA = A()
        newA.someValue = newB
        print(newB.text)
        print(newA.someValue?.text)
        
        unwrapedFunction(someValue: newA.someValue?.text)
        let text = newA.someValue?.text ?? ""
        print(text)
        
        
    }


}

