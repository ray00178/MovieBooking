//
//  StatusUI.swift
//  MovieBooking
//
//  Created by Willie Yam on 2022-08-19.
//

import SwiftUI

// MARK: - StatusUI

struct StatusUI: View {
  @State var color: Color = .init(.white)
  @State var text: String = "Available"

  var body: some View {
    HStack(spacing: 10.0) {
      Circle()
        .frame(width: 10, height: 10)
        .foregroundColor(color)

      Text(text)
        .font(.subheadline)
        .foregroundColor(.white)
    }
  }
}

// MARK: - StatusUI_Previews

struct StatusUI_Previews: PreviewProvider {
  static var previews: some View {
    StatusUI()
  }
}
