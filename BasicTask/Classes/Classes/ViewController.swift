//
//  ViewController.swift
//  Classes
//
//  Created by Ruslan Liulka on 14.08.2024.
//

import UIKit

class Phone {
    let number: Int
    let model: String
    let weight: Float
    
    init(number: Int, model: String, weight: Float) {
        self.number = number
        self.model = model
        self.weight = weight
    }
    
    convenience init(number: Int, model: String) {
        self.init(number: number, model: model, weight: 0)
    }
    
    convenience init() {
        self.init(number: 0, model: "", weight: 0)
    }

    func recieveCall(name: String) {
        print("\(name) is calling")
    }
    
    func recieveCall(name: String, number: Int) {
        print("\(name) is calling, number is \(number)")
    }
    
    func getNumber() {
        print(number)
    }
    
    func sendMessage(number: [Int]) {
        for num in number {
            print("The message send to number \(num)")
        }
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myPhone = Phone(number: 953335432, model: "Iphone XR", weight: 231)
        let friendPhone = Phone(number: 965467832, model: "Iphone 13", weight: 213)
        
        let phoneArray = [myPhone, friendPhone]
        
        for user in phoneArray {
            user.recieveCall(name: "Ruslan")
            user.getNumber()
        }
        
        for user in phoneArray {
            user.recieveCall(name: "Ruslan", number: 111)
        }
        
        for user in phoneArray {
            user.sendMessage(number: [938103,1100013049, 1389812, 0193894, 11111])
        }
        
        let newPhone = Phone(number: 1983984, model: "Iphone 12")
        
    }


}

