//
//  CircleBackground.swift
//  MovieBooking
//
//  Created by Willie Yam on 2022-08-16.
//

import SwiftUI

// MARK: - CircleBackground

struct CircleBackground: View {
  @State var color: Color = .init("greenCircle")

  var body: some View {
    Circle()
      .frame(width: 300, height: 300)
      .foregroundColor(color)
  }
}

// MARK: - CircleBackground_Previews

struct CircleBackground_Previews: PreviewProvider {
  static var previews: some View {
    CircleBackground()
  }
}
