//
//  TimeSheetDetail.swift
//  PunchCard
//
//  Created by Mauricio Cousillas on 6/27/20.
//

import SwiftUI

struct TimeSheetDetail: View {
  @Binding var timeSheet: TimeSheet

  var body: some View {
    VStack {
      Text("\(timeSheet.time) Seconds")
      Button(timeSheet.tracking ? "Stop" : "Start", action: {
        timeSheet.tracking.toggle()
      })
    }
  }
}
