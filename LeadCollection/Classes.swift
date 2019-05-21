//
//  Classes.swift
//  LeadCollection
//
//  Created by Emil Lenard on 21/05/2019.
//  Copyright © 2019 MindHack. All rights reserved.
//

import Foundation

class Student {
    // scop nume: Tip = Valoare
    var age: Int?
    var gender: String?
    
    // CONSTRUCTOR OR INITIALIZER
    init(age: Int?) {
        self.age = age
    }
    
    // METHOD
    func test() {
        print("student test")
    }
}

class HighSchoolStudent: Student {
    var highSchool: String = "Liviu Rebreanu"
    var teacher: String?
    
    // OVERRIDING PARENT CONSTRUCTOR to not request arguments
    init() {
        super.init(age: nil)
    }
    
    // OVERRIDING SUPER METHOD
    override func test() {
        print("student test")
    }
}

// FUNCTION
func test() {
    let student1: Student = Student(age: 21)
    let student2: Student = Student(age: 22)
    let student3: Student = Student(age: 23)
    student1.age = 22
    student1.gender = "m"
    
    let studentHighSchool: HighSchoolStudent = HighSchoolStudent()
    studentHighSchool.teacher = "jack"
}
