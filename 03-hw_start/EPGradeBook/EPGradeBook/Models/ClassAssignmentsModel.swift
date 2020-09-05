//
//  ClassAssignmentsModel.swift
//  EPGradeBook
//
//  Created by Teacher on 8/15/20.
//  Copyright © 2020 Teacher. All rights reserved.
//

import Foundation


struct ClassAssignmentsModel: AssignmentGraderModel {
  
  var schoolClasses: [SchoolClass]
  var assignments: [Assignment]
  var teachers: [Teacher]
  //var students: [Student]
  
  static var designModel: ClassAssignmentsModel = testModel
}

struct ClassAssignmentsModelTestData {
  
  var schoolClasses: [SchoolClass]?
  var assignments: [Assignment]?
  var teachers: [Teacher]?
  //var students: [Student]?
  
  //Complete this struct as part of programming assignment 1!
    
    
    struct ClassAssignmentModelTestData
    {
      var teachers: [Teacher]?
      //var students: [Student]?
      var assignments: [Assignment]?
      var schoolClasses: [SchoolClass]?
      
      init() {
        do {
          if let bundlePath = Bundle.main.path(forResource: "teacher", ofType: "json"),
            let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
            let decoder = JSONDecoder()
            teachers = try decoder.decode([Teacher].self, from: jsonData)
          }
          

          
        } catch {
          print(error)
        }
      }
    }
}
  
let testData = ClassAssignmentsModelTestData()
let testModel = ClassAssignmentsModel(schoolClasses: testData.schoolClasses!, assignments: testData.assignments!, teachers: testData.teachers!)
