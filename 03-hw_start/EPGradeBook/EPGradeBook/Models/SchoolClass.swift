//
//  SchoolClass.swift
//  EPGradeBook
//
//  Created by Teacher on 8/15/20.
//  Copyright © 2020 Teacher. All rights reserved.
//

import Foundation

enum ClassNames: String, Codable {
  
  case Fall2020_605_687 = "605.687 F2020"
  case Spring2021_605_687 = "605.687 S2021"
  
}

struct SchoolClass: Codable {
  
  public var id: UUID = UUID()
  let className: ClassNames
  //var students: [Student]     //You'll define the student struct in your homework
  var currentTeacher: Teacher?
  var pastTeachers: [Teacher]
  
}

