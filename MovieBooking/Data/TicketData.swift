//
//  TicketData.swift
//  MovieBooking
//
//  Created by Willie Yam on 2022-08-16.
//

import Foundation

// MARK: - TicketModel

struct TicketModel: Identifiable {
  var id = UUID().uuidString
  var image: String
  var title: String
  var subtitle: String
  var top: String
  var bottom: String
}

var tickets: [TicketModel] = [
  TicketModel(image: "thor", title: "Thor", subtitle: "Love and Thunder", top: "thor-top", bottom: "thor-bottom"),
  TicketModel(image: "panther", title: "Black Panther", subtitle: "Wakanda Forever", top: "panther-top", bottom: "panther-bottom"),
  TicketModel(image: "scarlet", title: "Doctor Strange", subtitle: "in the Multiverse of Madness", top: "scarlet-top", bottom: "scarlet-bottom"),
]
