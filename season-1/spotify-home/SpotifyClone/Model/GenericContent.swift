//
//   RecentlyPlayed.swift
//  SpotifyClone
//
//  Created by Franck-Stephane Ndame Mpouli on 03/08/2020.
//

import Foundation

struct GenericContent: Identifiable {
    var id = UUID()
    var title: String
    var subTitle: String?
    var imageName: String
    
    static let heroData: [GenericContent] = [
        GenericContent(title: "Chilled Jazz", imageName: "jazz"),
        GenericContent(title: "This is Kanye West", imageName: "kanye"),
        GenericContent(title: "Afro Mix", imageName: "afro"),
        GenericContent(title: "Section 80", imageName: "section-80"),
        GenericContent(title: "So far Gone", imageName: "sofar"),
        GenericContent(title: "'00 R&B", imageName: "rnb-2"),

    ]
    
    static let recentlyPlayedData: [GenericContent] = [
        GenericContent(title: "Neo-Soul", imageName: "neo-soul-2"),
        GenericContent(title: "Summer Flex", imageName: "summer-flex"),
        GenericContent(title: "Asthma Team", imageName: "comeback"),
        GenericContent(title: "Mind Booster", imageName: "booster"),
        GenericContent(title: "The City is Mine", imageName: "rfi"),
        GenericContent(title: "Fresh Finds", imageName: "fresh-finds-4"),
        GenericContent(title: "Ignorance is Bliss", imageName: "ov"),
        GenericContent(title: "Reggae Classics", imageName: "Raggae"),

    ]
    
    static let podcastsData: [GenericContent] = [
        GenericContent(title: "3 Shots of Tequila", subTitle: "Podcast • 3 Shots of Tequila", imageName: "3-shots"),
        GenericContent(title: "Pennies To Pounds", subTitle: "Podcast • Kae",  imageName: "p2p"),
        GenericContent(title: "Technullogy Podcast", subTitle: "Podcast • Technullogy",  imageName: "tech"),
        GenericContent(title: "Techish", subTitle: "Podcast • Techish",  imageName: "techish"),
    ]
    
    static let editorPickData: [GenericContent] = [
        GenericContent(title: "Earl Sweatshirt, Freddie Gibbs, The Alchemist, Tyler, The Creator", imageName: "hiphop-2"),
        GenericContent(title: "Drake, Andeerson .Paak, H.E.R, Skepta", imageName: "rnb-3"),
        GenericContent(title: "Rock This, Tokyo Hotel, Boy Kill Boy", imageName: "rock"),
        GenericContent(title: "The Groove Theory", imageName: "groove"),
        GenericContent(title: "Summer Flex", imageName: "summer-flex"),
        GenericContent(title: "Are & Be", imageName: "rnb"),
        GenericContent(title: "I Love My Neo-Soul", imageName: "neo-soul-4"),
    ]
    
    static let forYouData: [GenericContent] = [
        GenericContent(title: "Born Sinner", subTitle: "J.Cole", imageName: "born-sinner"),
        GenericContent(title: "Neo Soul", subTitle: "Playlist • Spotify",  imageName: "neo-soul-1"),
        GenericContent(title: "Good Kid, M.A.A.D City", subTitle: "Kendrick Lamar", imageName: "gkmc"),
        GenericContent(title: "Graduation", subTitle: "Kanye West", imageName: "grad"),
        GenericContent(title: "Mind Booster", subTitle: "Playlist • Spotify",  imageName: "booster-2"),
        GenericContent(title: "Fresh Finds", subTitle: "Playlist • Spotify",  imageName: "fresh-finds-3"),
        GenericContent(title: "Hip-Hop Drive", subTitle: "Playlist • Spotify",  imageName: "hiphop"),
    ]
}


