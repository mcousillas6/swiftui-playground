//
//  TrackingView.swift
//  PunchCard
//
//  Created by Mauricio Cousillas on 6/27/20.
//

import SwiftUI

struct TrackingView: View {
  @Binding var tracking: Bool
  @State var opacity: Double = 0
  let timer = Timer.publish(
    every: 1,
    on: .main,
    in: .common
  ).autoconnect()

  var body: some View {
    HStack {
      if tracking {
        Label("Tracking", systemImage: "play.fill")
          .opacity(opacity)
          .animation(
            Animation
              .easeInOut(duration: 1.5)
              .repeatForever(autoreverses: true)
          ).onAppear { opacity = 1 }
      } else {
        Label("Stopped", systemImage: "stop")
      }
    }
  }
}
