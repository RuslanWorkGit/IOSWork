//
//  ViewController.swift
//  Enum
//
//  Created by Ruslan Liulka on 02.09.2024.
//

import UIKit

enum CarClass: String {
    case Sedan = "Sedan"
    case LiftBack = "Lift Back"
    case Cabrio = "Cabrio"
    case Hetch
    case Jeep
    case Lemusin
    case Pickup = "Pickup"
    case AllRoads
}

enum City {
    case Kyiv
    case Sumy
    case Kharkiv
    case Vinnitsa
    case Poltava
    case Dnipro
    case Odessa
    case Lviv
    
    func populatioOfCity() -> String {
        switch self {
        case .Kyiv:
            return "Population of Kyiv is 2567983"
        case .Sumy:
            return "Population of Sumy is 245982"
        case .Kharkiv:
            return "Popolation of Kharkiv is 1372983"
        case .Vinnitsa:
            return "Population of Vinnitsa is 482301"
        case .Poltava:
            return "Population of Poltava is 342754"
        case .Dnipro:
            return "Population of Dnipro is 1235892"
        case .Odessa:
            return "Population of Odessa is 843267"
        case .Lviv:
            return "Population of Lviv is 834567"
        }
    }
}

enum Rocket {
    case balistics(Float)
    case krilataRacketa(Int)
    case minomet(Double)
    case ak47(String)
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let myCar = CarClass.Hetch
        let FriendCar = CarClass.Cabrio
        let yanaCar = CarClass.Jeep
        
        print(myCar.rawValue)
        print(FriendCar.rawValue)
        print(yanaCar.rawValue)
        
        let myCity = City.Sumy
        let yanaCity = City.Vinnitsa
        let arsenCity = City.Poltava
        
        print(myCity.populatioOfCity())
        print(yanaCity.populatioOfCity())
        print(arsenCity.populatioOfCity())
        
        func getRocketInfo(rocket: Rocket) -> String {
            switch rocket {
            case .balistics(let balistica):
                return "Balistica can fly over \(balistica) km"
            case .krilataRacketa(let krilatka):
                return "Krilatka can fly over \(krilatka) km"
            case .minomet(let minom):
                return "Minomet car use to radius like \(minom) km"
            case .ak47(let avtomat):
                return "Ak can fire to \(avtomat) in radius 3 km"
            }
        }
        
        let bal = Rocket.balistics(1562.1)
        let kril = Rocket.krilataRacketa(600)
        let min = Rocket.minomet(32.5)
        let avtomat = Rocket.ak47("Any target")
        
        print(getRocketInfo(rocket: bal))
        print(getRocketInfo(rocket: kril))
        print(getRocketInfo(rocket: min))
        print(getRocketInfo(rocket: avtomat))
    }


}

