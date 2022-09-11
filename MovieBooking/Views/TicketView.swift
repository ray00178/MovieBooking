//
//  TicketView.swift
//  MovieBooking
//
//  Created by Ray on 2022/9/9.
//

import SwiftUI

// MARK: - TicketView

struct TicketView: View {
  
  @State private var animate = false
  
  
  var body: some View {
    ZStack {
      CircleBackground(color: Color("greenCircle"))
        .blur(radius: animate ? 30 : 100)
        .offset(x: animate ? -50 : -130, y: animate ? -30 : -100)
        .task {
          withAnimation(.easeInOut(duration: 7).repeatForever()) {
            animate.toggle()
          }
        }
      
      CircleBackground(color: Color("pinkCircle"))
        .blur(radius: animate ? 30 : 100)
        .offset(x: animate ? 100 : 130, y: animate ? 150 : 100)
      
      VStack(spacing: 30) {
        Text("Mobile Ticker")
          .font(.title3)
          .foregroundColor(.white)
          .fontWeight(.bold)

        Text("Once you a movice ticket simply scan the barcode to access to your movie.")
          .frame(maxWidth: 248)
          .font(.body)
          .foregroundColor(.white)
          .multilineTextAlignment(.center)
      }
      .padding(.horizontal, 20)
      .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
      
      Tickets()
        .padding(.top, 30)
    }
    .background(LinearGradient(
      colors: [Color("backgroundColor"), Color("backgroundColor2")],
      startPoint: .top,
      endPoint: .bottom)
    )
  }
}

// MARK: - TicketView_Previews

struct TicketView_Previews: PreviewProvider {
  static var previews: some View {
    TicketView()
  }
}
