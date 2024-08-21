//
//  ViewController.swift
//  Protocols
//
//  Created by Ruslan Liulka on 21.08.2024.
//

import UIKit
protocol Movable {
    var name: String {get set}
    func move()
}
struct Fox: Movable {
    var name: String
    
    func move() {
        print()
    }
    
    
}


struct Eagl: Movable, Flyable {
    func fly() {
        print("fly")
    }
    
    var name: String
    
    func move() {
        print()
    }
    
    
}

protocol Flyable {
    func fly()
}

protocol SuperUnit: Movable, Flyable {
    
}

func startDay(unit: Movable) {
    unit.move()
}

let fox = Fox(name: "Fox")
let eagle = Eagl(name: "Eagl")




class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        startDay(unit: fox)
        startDay(unit: eagle)
    }


}

