//
//  ViewController.swift
//  POP-Practice
//
//  Created by Ruslan Liulka on 20.09.2024.
//

import UIKit
//Class
class BirdClass {
    var name: String = ""
    var canFly: Bool = false
    var flySpeed: Double = 0
    func distance(seconds: Float) -> Float { return 0 }
}

class SwanWhiteClass: BirdClass {
    
}

class BlackSwanClass: BirdClass {
    
}

class PenguinClass: BirdClass {
    
}

//POP

protocol Bird {
    var name: String { get }
    var canFly: Bool { get }
}

protocol FLyingBird {
    var flySpeed: Float { get }
}

extension Bird {
    var canFly: Bool { return  false }
}

extension Bird where Self: FLyingBird {
    var canFly: Bool { return true }
}

extension FLyingBird {
    func distance(seconds: Float) -> Float {
        seconds * flySpeed
    }
}

struct Penguin: Bird {
    var name: String
}

enum Swan: String, Bird, FLyingBird {
    case white
    case black
    
    var flySpeed: Float {
        switch self {
        case .white: return 100
        case .black: return 150
        }
    }
    
    var name: String {
        return self.rawValue
    }
    
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myPenguine = Penguin(name: "Bob")
        print(myPenguine.canFly)
        
        var myFirstSwan = Swan.black
        let mySecondSwan = Swan.white
        print(myFirstSwan.canFly)
        print(myFirstSwan.flySpeed)
        print(myFirstSwan.distance(seconds: 10))
      
    }
}

