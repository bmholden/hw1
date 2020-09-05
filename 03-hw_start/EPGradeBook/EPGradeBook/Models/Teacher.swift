//
//  Teacher.swift
//  EPGradeBook
//
//  Created by Teacher on 8/15/20.
//  Copyright © 2020 Teacher. All rights reserved.
//

import Foundation

enum EdDegree : String, Codable {
  
  case PhD = "PhD"
  case Masters = "Masters"
  case Bachelors = "Bachelors"
  case Associate = "Associate"
  
}

struct Teacher: Codable {
  
  let name: String
  let email: String
  let jhed: String
  let imageName: String
  let startDate: Date
  let highestDegree: EdDegree
  var classesTaught: [ClassNames]
  var activelyTeaching: [ClassNames]
  var currentRating: Double
  let affiliation: String
  
}
