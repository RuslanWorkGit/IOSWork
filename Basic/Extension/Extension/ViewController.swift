//
//  ViewController.swift
//  Extension
//
//  Created by Ruslan Liulka on 22.08.2024.
//

import UIKit

extension Double {
    var km: Double { return self * 1000}
    var m: Double { return self }
    var cm: Double { return self / 100}
}

protocol Flyable {
    func fly()
}

extension Flyable {
    func fly() {
        print("Fly")
    }
}

struct Bird: Flyable {
    
}

struct Airplane {
    
}

extension Airplane: Flyable {
    func fly() {
        print("Flyyyy")
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let distance = 5.km + 32.m + 10.cm
        print(distance)
        
        let myBird = Bird()
        myBird.fly()
    }


}

