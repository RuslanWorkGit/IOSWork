//
//  ViewController.swift
//  Dictionary
//
//  Created by Ruslan Liulka on 01.07.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var phoneBook = ["Alice" : 000, "Bob": 111]
    
    let myDict1 = ["" : 0]
    let myDict2 = [String() : Int()]
    let myDict3: [String: Int] = [:]
    let myDict4: Dictionary<String, Int> = [:]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myElement = phoneBook["Bob"]
        print(phoneBook)
        phoneBook["Tom"] = 222
        
        print(myElement)
        print(phoneBook)
        
        phoneBook.removeValue(forKey: "Bob")
        phoneBook["Alice"] = nil
        print(phoneBook)

        let myNewVar = phoneBook["Chak"] // nil
        print(phoneBook)
        
        let countOfElement = phoneBook.count
        print(countOfElement)
        let isItEmpty = phoneBook.isEmpty
        print(isItEmpty)
        
        let allKeys = phoneBook.keys
        print(allKeys)
        let allValues = phoneBook.values
        print(allValues)
    }


}

