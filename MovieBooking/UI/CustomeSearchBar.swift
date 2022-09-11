//
//  CustomeSearchBar.swift
//  MovieBooking
//
//  Created by Ray on 2022/9/10.
//

import SwiftUI

// MARK: - CustomeSearchBar

struct CustomeSearchBar: View {
  
  @State var searchText = ""
  
  var body: some View {
    HStack {
      Image(systemName: "magnifyingglass")
      
      TextField("Search", text: $searchText)
      
      Image(systemName: "mic.fill")
    }
    .padding(EdgeInsets(top: 7, leading: 8, bottom: 7, trailing: 8))
    .font(.headline)
    .background(.ultraThinMaterial)
    .foregroundColor(.white.opacity(0.6))
    .cornerRadius(10)
  }
}

// MARK: - CustomeSearchBar_Previews

struct CustomeSearchBar_Previews: PreviewProvider {
  static var previews: some View {
    CustomeSearchBar()
  }
}
