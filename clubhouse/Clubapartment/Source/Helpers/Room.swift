//
//  Room.swift
//  Clubapartment
//
//  Created by Franck-Stephane Ndame Mpouli on 16/02/2021.
//

import Foundation

struct Room: Identifiable {
    let id: String = UUID().uuidString
    let club: String?
    let title: String?
    let avatars: [String]
    let names: [String]
    let participantsCount: String
    let speakersCount: String
    
    static let data: [Room] = [
        
        Room(club: "XPO CLUB", title: "Daily habits of high performers 🏃‍♂️", avatars: [Images.user1, Images.user2], names: Array(Names.names[1...5]), participantsCount: "3.5k", speakersCount: "9"),
        Room(club: nil, title: nil, avatars: [Images.user3, Images.user4], names: Array(Names.names[6...8]), participantsCount: "109", speakersCount: "23"),
        Room(club: "LULLABY CLUB", title: "an iconic chat ✨", avatars: [Images.user5, Images.user6], names: Array(Names.names[9...14]), participantsCount: "97", speakersCount: "4"),
        Room(club: nil, title: "No Topic, Vibes only 🥶", avatars: [Images.user7, Images.user8], names: Array(Names.names[17...19]), participantsCount: "1.2k", speakersCount: "14"),
        Room(club: "Startup 101", title: "Stop chasing and start building 📲", avatars: [Images.user9, Images.user10], names: Array(Names.names[20...22]), participantsCount: "31", speakersCount: "2"),
        
        
    
    ]
}
