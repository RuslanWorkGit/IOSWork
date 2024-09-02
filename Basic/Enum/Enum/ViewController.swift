import UIKit

enum Degree {
    case bachelor
    case master
}

enum Day: CaseIterable {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Satuday
    case Sunday
    
    func dayType() -> String {
        switch self {
        case .Monday, .Tuesday, .Wednesday, .Thursday, .Friday:
            return "Week Day"
        case .Satuday, .Sunday:
            return "Wekkends"
        }
        
    }
}

enum SizeOfPizza: Int {
    case small = 12
    case medium = 18
    case large = 25
    case extraLarge = 50
}

enum Distance {
    case km(Int)
    case mi(Float)
}

struct Person {
    var name: String
    var degree: Degree
}

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        var Alice = Person(name: "Alice", degree: .bachelor)
        print(Alice.degree)
        
        switch Alice.degree {
        case .bachelor:
            print("Alice is bachelor")
        case .master:
            print("Alice is master")
        }
        
        let dayOfWeek = Day.Monday
        let arrayOfValues = Day.allCases
        print(arrayOfValues)
        
        print(dayOfWeek.dayType())
        
        let size = SizeOfPizza.small
        print(size)
        print(size.rawValue)
        
        let newSize = SizeOfPizza(rawValue: 50)
        print(newSize)
        print(newSize?.rawValue)
        
        let distanceToMySchool = Distance.km(18)
        let distanceToMyKinderGarden = Distance.mi(10)
        func getMessage(distance: Distance) -> String {
            switch distance {
            case .km(let distanceKM):
                return "Distance is kilometers is \(distanceKM)"
            case .mi(let distanceMi):
                return "Distance is miles is \(distanceMi)"
            
            }
        }
        
        print(getMessage(distance: distanceToMySchool))
        print(getMessage(distance: distanceToMyKinderGarden))
    }


}

