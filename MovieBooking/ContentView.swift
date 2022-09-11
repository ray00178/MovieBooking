//
//  ContentView.swift
//  MovieBooking
//
//  Created by Willie Yam on 2022-08-16.
//

import SwiftUI

// MARK: - ContentView

struct ContentView: View {
  
  @State var currentTab: TabData = .home
  
  init() {
    UITabBar.appearance().isHidden = true
  }
  
  var body: some View {
    NavigationView {
      VStack(spacing: 0.0) {
        TabView(selection: $currentTab) {
          HomeView()
            .tag(TabData.home)
          
          Text("Location")
            .tag(TabData.location)
          
          TicketView()
            .tag(TabData.ticket)
          
          Text("Category")
            .tag(TabData.category)
          
          Text("Profile")
            .tag(TabData.profile)
        }
        
        CustomTabBar(currentTab: $currentTab)
      }
      .ignoresSafeArea(.keyboard)
    }
  }
}

// MARK: - ContentView_Previews

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
