//
//  ViewController.swift
//  Protocols
//
//  Created by Ruslan Liulka on 21.08.2024.
//

import UIKit

protocol Movable {
    func run()
}

protocol Fightable {
    func fight()
}

protocol Hero: Movable, Fightable {
    var name: String {get set}
}

struct Farmer: Movable {
    func run() {
        print("Farmer: run")
    }
}

struct Visitor: Movable {
    func run() {
        print("Visitor: run")
    }
}

struct Butcher: Fightable {
    func fight() {
        print("Butcher: fight")
    }
}

struct Killer: Fightable {
    func fight() {
        print("Killer: fight")
    }
}

struct SuperMan: Hero {
    var name: String
    
    func run() {
        print("SuperMan: run")
    }
    
    func fight() {
        print("SuperMan: fight")
    }
}

struct SpiderMan: Hero {
    var name: String
    
    func run() {
        print("SpiderMan: run")
    }
    
    func fight() {
        print("SpiderMan: fight")
    }
}

class Tavern {
    var movers: [Movable]
    var fighters: [Fightable]
    var superHeroes: [Hero]
    
    func enterTavern(unit: Hero) {
        unit.fight()
        
        for mover in movers {
            mover.run()
        }
        
        for fighter in fighters {
            fighter.fight()
        }
    }
    
    init(movers: [Movable], fighters: [Fightable], superHeroes: [Hero]) {
        self.movers = movers
        self.fighters = fighters
        self.superHeroes = superHeroes
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let andrew = Farmer()
        let alice = Visitor()
        
        let butcher = Butcher()
        let yanis = Killer()
        
        let tomKrus = SuperMan(name: "Tom Kruss")
        let peterParker = SpiderMan(name: "Peter Parker")
        
        let bar = Tavern(movers: [andrew, alice], fighters: [butcher, yanis], superHeroes: [tomKrus, peterParker])
        
        for hero in bar.superHeroes {
            bar.enterTavern(unit: hero)
        }
        
        
    }


}

