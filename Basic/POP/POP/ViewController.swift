//
//  ViewController.swift
//  POP
//
//  Created by Ruslan Liulka on 17.09.2024.
//

import UIKit

//OOP

class BirdClass {
    var name: String = ""
    var canFly: Bool = true
    var flySpeed: Double = 0
    func distace(seconds: Float) -> Float { return 0 }
}

class SwanWhiteClass: BirdClass {
    
}

class SwanBlackClass: BirdClass {
    
}

class PenguinClass: BirdClass {
    
}

//POP
protocol Bird {
    var name: String {get}
    var canFly: Bool {get}
}

protocol FlyingBird {
    var flySpeed: Float {get}
}

extension Bird {
    var canFly: Bool {
        return false
    }
}

extension Bird where Self: FlyingBird {
    var canFly: Bool {
        return true
    }
}

extension FlyingBird {
    func distance(seconds: Float) -> Float {
        seconds * flySpeed
    }
}

struct PenguisProtocol: Bird {
    var name: String
}

enum Swan: FlyingBird {
    var flySpeed: Float {
        switch self {
        case .White:
            <#code#>
        case .Black:
            <#code#>
        }
    }
    
    case White
    case Black
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let myPenguin = PenguisProtocol(name: "Bob")
        myPenguin.canFly
        
        
    }


}

