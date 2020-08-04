//
//  RecentlyPlayedSection.swift
//  SpotifyClone
//
//  Created by Franck-Stephane Ndame Mpouli on 03/08/2020.
//

import SwiftUI

struct RecentlyPlayedSectionView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(GenericContent.recentlyPlayedData) { item in
                    RecentlyPlayedCell(data: item)
                    
                }
            }
            .padding()
            .padding(.top, -16)
        }
    }
}

struct RecentlyPlayedSection_Previews: PreviewProvider {
    static var previews: some View {
        RecentlyPlayedSectionView()
            .previewLayout(.sizeThatFits)
            .background(Color.black)
    }
}


