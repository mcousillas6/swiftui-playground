//
//  ContentView.swift
//  Shared
//
//  Created by Mauricio Cousillas on 6/25/20.
//

import SwiftUI


struct TimeSheetList: View {
  @EnvironmentObject var provider: TimeSheetProvider

  var body: some View {
    VStack {
      List(provider.timeSheets, id: \.id) { sheet in
        TimeSheetRow(timeSheet: $provider.timeSheets[sheet.id])
      }
    }
    .navigationTitle(Text("My Time Entries"))
    .toolbar {
      ToolbarItem {
        Group{
          HStack {
            CapsuleButton(text: "Stop all", action: {})
            Spacer()
            CapsuleButton(text: "Add new", action: {})
            Spacer()
            CapsuleButton(text: "Start all", action: {})
          }
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      NavigationView {
        TimeSheetList().environmentObject(TimeSheetProvider())
      }
      .preferredColorScheme(.dark)
    }
}
