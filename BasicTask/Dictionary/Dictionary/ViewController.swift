//
//  ViewController.swift
//  Dictionary
//
//  Created by Ruslan Liulka on 01.07.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var countryAndCapital = ["Ukraine": "Kyiv", "Farnce": "Paris", "German": "Berlin", "USA": "Washington"]
    var cityAndPostIndex = ["Kyiv": 03056, "Sumy": 103001, "Kharkiv": 81740]
    var studentSatus = ["Ruslan": false, "Denis": true, "Bogdan": false, "Yana": true]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let sumDictionary: [String: Any] = ["Country and Capital": countryAndCapital["Ukraine"],
                                            "City and post code": cityAndPostIndex["Kyiv"],
                                            "Student status": studentSatus["Ruslan"]]
        
        countryAndCapital.removeValue(forKey: "France")
        cityAndPostIndex["Sumy"] = nil
        studentSatus.removeValue(forKey: "Bogdan")
        
        var onlyKeys = Array(sumDictionary.keys)
        let onlyValues = Array(sumDictionary.values)
        
        print(onlyKeys)
        print(onlyValues)
        
//        let additionalKeysFirst = onlyKeys.first
//        let additionalKeysLast = onlyKeys.last
        
        if onlyKeys.count > 1 {
            let temp = onlyKeys[0]
            onlyKeys[0] = onlyKeys[onlyKeys.count - 1]
            onlyKeys[onlyKeys.count - 1] = temp
        }
        
        print(onlyKeys)
        
    }


}

