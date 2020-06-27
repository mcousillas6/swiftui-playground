//
//  PunchCardApp.swift
//  Shared
//
//  Created by Mauricio Cousillas on 6/25/20.
//

import SwiftUI

@main
struct PunchCardApp: App {
    @StateObject var provider = TimeSheetProvider()

    let timer = Timer.publish(
      every: 1,
      on: .main,
      in: .common
    ).autoconnect()

    var body: some Scene {
        WindowGroup {
          NavigationView {
            TimeSheetList()
          }
          .environmentObject(provider)
          .onReceive(timer) { _ in
            provider.timeSheets.forEach {
              if $0.tracking {
                provider.timeSheets[$0.id].time += 1
              }
            }
          }
        }
    }
}

struct PunchCardApp_Previews: PreviewProvider {
  static var previews: some View {
    TimeSheetList()
  }
}
