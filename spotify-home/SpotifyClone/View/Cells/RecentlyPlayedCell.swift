//
//  RecentlyPlayedCell.swift
//  SpotifyClone
//
//  Created by Franck-Stephane Ndame Mpouli.
//

import SwiftUI

struct RecentlyPlayedCell: View {
    var data: GenericContent
    var body: some View {
        VStack(alignment: .leading) {
            Image(data.imageName)
                .resizable()
                .cornerRadius(3)
                .frame(width: 130, height: 130)
            Text(data.title)
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .font(.subheadline)
        }
    }
}

struct RecentlyPlayedCell_Previews: PreviewProvider {
    static var previews: some View {
        RecentlyPlayedCell(data: GenericContent.recentlyPlayedData[0])
            .previewLayout(.sizeThatFits)
            .background(Color.black)
    }
}
