//
//  AssignmentGraderModel.swift
//  EPGradeBook
//
//  Created by Teacher on 8/15/20.
//  Copyright © 2020 Teacher. All rights reserved.
//

import Foundation


protocol AssignmentGraderModel {
  var schoolClasses: [SchoolClass] { get }
  var assignments: [Assignment] { get }
  var teachers: [Teacher] { get }
  //var students: [Student] { get } //You'll define the student struct in the homework
}
