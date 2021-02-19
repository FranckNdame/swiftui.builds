//
//  Event.swift
//  Clubapartment
//
//  Created by Franck-Stephane Ndame Mpouli on 16/02/2021.
//

import Foundation

struct Event: Identifiable {
    var id: String = UUID().uuidString
    let clubName: String
    let roomName: String
    let time: String
    
    static let data: [Event] = [
        Event(clubName: "STARTUP CLUB", roomName: "Machine Learning and AI brainstorming/ help session", time: "16:00"),
        Event(clubName: "THE COOL HOUSE", roomName: "Cornona Lockdown 2.0", time: "18:00"),
        Event(clubName: "NEW MONEY MOGULS", roomName: "Financial Literacy for Developers", time: "20:00"),
    ]
}
