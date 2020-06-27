//
//  CapsuleButton.swift
//  PunchCard
//
//  Created by Mauricio Cousillas on 6/27/20.
//

import SwiftUI

struct CapsuleButton: View {
  let text: String
  let action: () -> Void

  var body: some View {
    Button(action: action) {
      Text(text)
          .foregroundColor(.white)
          .padding(8)
          .background(Color.accentColor)
          .clipShape(Capsule())
    }
  }
}

struct CapsuleButton_Previews: PreviewProvider {
  static var previews: some View {
    CapsuleButton(text: "Hello Test", action: {})
  }
}
