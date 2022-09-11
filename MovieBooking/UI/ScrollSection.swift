//
//  ScrollSection.swift
//  MovieBooking
//
//  Created by Ray on 2022/9/10.
//

import SwiftUI

// MARK: - ScrollSection

struct ScrollSection: View {
  @State var title = "Now playing"
  
  @State var posters: [String] = ["poster1", "poster2", "poster3", "poster4", "poster5", "poster6"]
  
  var body: some View {
    VStack(alignment: .leading) {
      Text(title)
        .font(.headline)
        .foregroundColor(.white)
        .padding(.horizontal, 20)
      
      ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 20.0) {
          ForEach(posters.indices, id: \.self) { index in
            NavigationLink {
              BookingView()
            } label: {
              Image(posters[index])
                .resizable()
                .frame(width: 100, height: 120)
                .cornerRadius(20)
            }
          }
        }
        .padding(.horizontal, 20)
      }
    }
  }
}

// MARK: - ScrollSection_Previews

struct ScrollSection_Previews: PreviewProvider {
  static var previews: some View {
    ScrollSection()
  }
}
