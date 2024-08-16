//
//  ViewController.swift
//  Optional
//
//  Created by Ruslan Liulka on 16.08.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lineOfText: String? = "Default"
        print(lineOfText)
        
        let new = lineOfText ?? "No Data"
        print(new)
        
        var test: String? = "nil"
        print(test!)
        
        let new1 = test ?? ""
        print(new1)
        
        if let test = test {
            print(test)
        }
        
        func unwrapIt() {
            guard let test = test else {
                return
            }
            
            print(test)
        }
        
        unwrapIt()
    }


}

