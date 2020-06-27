//
//  TimeSheetProvider.swift
//  PunchCard
//
//  Created by Mauricio Cousillas on 6/27/20.
//

import Foundation

struct TimeSheet {
  var time: Int = 0
  var tracking = false
  var name: String
  let id: Int

}

class TimeSheetProvider: ObservableObject {
  @Published var timeSheets: [TimeSheet] = [
    TimeSheet(name: "Painting", id: 0),
    TimeSheet(tracking: true, name: "Groceries", id: 1),
    TimeSheet(name: "Meditation", id: 2)
  ]
}
