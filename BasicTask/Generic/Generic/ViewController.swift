//
//  ViewController.swift
//  Generic
//
//  Created by Ruslan Liulka on 29.08.2024.
//

import UIKit

struct MyDictionary<Key: Hashable, Value> {
    var myDictionary: [Key: Value] = [:]
    
    mutating func addValueToDict(key: Key, value: Value) {
        myDictionary[key] = value
    }
    
    func getValueFromDict(key: Key) -> Value? {
        myDictionary[key]
    }
}

class ViewController: UIViewController {
    
    func swap<T>(val1: inout T, val2: inout T) {
        let val3 = val1
        val1 = val2
        val2 = val3
    }
    
    func tuple<T>(val1: T, val2: T) -> (first: T, second: T) {
        (val1, val2)
    }
    
    func summa<T: Numeric>(val1: T, val2: T) -> T {
        val1 + val2
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        var num1 = 12
        var num2 = 67
        
        swap(val1: &num1, val2: &num2)
        print("num1 = \(num1)")
        print("num2 = \(num2)")
        
        let tupls = tuple(val1: num1, val2: num2)
        print(tupls.first)
        print(tupls.second)
        
        let sum = summa(val1: num1, val2: num2)
        print("Summ is \(sum)")
        
        var creatDict = MyDictionary<String, Int>()
        creatDict.addValueToDict(key: "One", value: 1)
        creatDict.addValueToDict(key: "Two", value: 2)
        creatDict.addValueToDict(key: "Three", value: 3)
        
        print(creatDict)
        print(creatDict.getValueFromDict(key: "Two"))
    }


}

