//
//  ViewController.swift
//  array
//
//  Created by Ruslan Liulka on 06.06.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let city = "Sumy"
    var arrayOfCity = ["Dnipro", "Kyiv", "Lviv"]
    
    //empty array
    let emptyArra1 = [""]
    let emptyArray2 = [String()]
    let emptyArray3: [String] = []
    let emptyArrra4: Array<String> = []
    
    var usaCity = ["NY", "SF", "LA"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(arrayOfCity[0])
        print(arrayOfCity.last)
        
        //add element
        arrayOfCity.append(city)
        arrayOfCity.insert("Chernigiv", at: 0)
        
        print(arrayOfCity[0])
        print(arrayOfCity.last)
        
        let allCities = arrayOfCity + usaCity
        print(allCities)
        arrayOfCity.append(contentsOf: usaCity)
        print(arrayOfCity)
        
        //remove
        usaCity.remove(at: 0)
        print(usaCity)
        
        //.conut .isEmpty
        print(usaCity.count)
        print(usaCity.isEmpty)
        
        //Any Type
        let arrayOfAnyType: [Any] = ["Bob", 22, true]
    }


    
}

