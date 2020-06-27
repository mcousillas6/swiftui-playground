//
//  TimeSheetRow.swift
//  PunchCard
//
//  Created by Mauricio Cousillas on 6/27/20.
//

import SwiftUI



struct TimeSheetRow: View {
  @Binding var timeSheet: TimeSheet

  var body: some View {
    NavigationLink(
      destination: TimeSheetDetail(timeSheet: $timeSheet)
    ) {
      VStack(alignment: .leading) {
        HStack {
          Text(timeSheet.name)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(.primary)
          Spacer()
          Text("\(timeSheet.time) Seconds")
        }
        TrackingView(tracking: $timeSheet.tracking)
      }
    }
  }
}

struct TimeSheetRow_Previews: PreviewProvider {
  static var previews: some View {
    List {
      TimeSheetRow(timeSheet: Binding.constant(TimeSheet(time: 30, tracking: true, name: "Meditation", id: 1)))
      TimeSheetRow(timeSheet: Binding.constant(TimeSheet(time: 30, tracking: false, name: "Running", id: 1)))
    }
  }
}
