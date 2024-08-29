//
//  ViewController.swift
//  Generic
//
//  Created by Ruslan Liulka on 28.08.2024.
//

import UIKit

struct Storage<Element> {
    var allElements: [Element] = []
    mutating func addElement(element: Element) {
        allElements.append(element)
    }
}

class ViewController: UIViewController {
    
    func wrap<T,D>(key: T, value: D) -> [T: D] {
        let resulDict: Dictionary  = [key: value]
        return resulDict
    }
    
    func isEqual<T: Comparable & Flyable>(val1: T, val2: T) -> Bool {
        val1.fly()
        return val1 == val2
    }
    
    protocol Flyable {
        func fly()
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        var storage = Storage<Int>()
        storage.addElement(element: 10)
        storage.addElement(element: 11)
        storage.addElement(element: 23)
        
        print(storage.allElements)
        print(storage.getFirst())
    }


}

extension Storage {
    func getFirst() -> Element?{
        allElements.first
    }
}

