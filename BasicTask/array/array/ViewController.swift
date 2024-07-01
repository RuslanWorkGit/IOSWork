//
//  ViewController.swift
//  array
//
//  Created by Ruslan Liulka on 06.06.2024.
//

import UIKit

class ViewController: UIViewController {

    var studentsArray = ["Ruslan", "Arsen", "Bogdan", "Eugene", "Yana"]
    
    let newStudent1 = "Andriy"
    let newStudent2 = "Bogomol"
    let newStudents3 = ["Rita", "Panda"]
    var group: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        studentsArray.append(newStudent1)
        studentsArray.insert(newStudent2, at: 0)
        
        print(studentsArray)
        
        studentsArray.removeFirst()
        studentsArray.remove(at: studentsArray.count - 2)
        
        print(studentsArray)
        
        group = studentsArray + newStudents3
        print("First name of the student is \(group.first), the last one is \(group.last)")
        print("Second student is \(group[1]) the third one is \(group[2])")
        
        print("Array contains \(group.count) numbers of student")
        print("Is array empty - \(group.isEmpty ? "yes" : "no" )")
        
        let newGroup = group
        group.removeAll()
        print(group)
    }


}

