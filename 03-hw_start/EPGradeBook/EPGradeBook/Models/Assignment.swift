//
//  Assignment.swift
//  EPGradeBook
//
//  Created by Teacher on 8/15/20.
//  Copyright © 2020 Teacher. All rights reserved.
//

import Foundation

enum AssignmentType: String, Codable {
  
  case DevelopmentLog = "Development Log"
  case WeeklyCompletion = "Weekly Completion"
  case FinalProject = "Final Project"
  
}

struct Assignment: Codable {
  
  public var id: UUID = UUID()
  public let name: String
  let releaseDate: Date
  let dueDate: Date
  let description: String
  let maxGrade: Double
  let assignmentType: AssignmentType
  var averageRating: Double
  
}

struct AssignmentGrade: Codable {
  
  let assignment: Assignment
  let grade: Double
  let graderComments: String
  
}
