//
//  GenericCardSection.swift
//  SpotifyClone
//
//  Created by Franck-Stephane Ndame Mpouli on 03/08/2020.
//

import SwiftUI

struct GenericCardSection: View {
    var data: [GenericContent]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .firstTextBaseline, spacing: 16) {
                ForEach(data) { item in
                    GenericCard(data: item)
                }
            }
            .padding()
            .padding(.top, -16)
        }
    }
}

struct GenericCardSection_Previews: PreviewProvider {
    static var previews: some View {
        GenericCardSection(data: GenericContent.podcastsData)
            .previewLayout(.sizeThatFits)
            .background(Color.black)
    }
}


