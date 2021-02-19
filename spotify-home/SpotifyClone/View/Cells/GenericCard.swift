//
//  GenericCard.swift
//  SpotifyClone
//
//  Created by Franck-Stephane Ndame Mpouli on 03/08/2020.
//

import SwiftUI

struct GenericCard: View {
    var data: GenericContent
    var body: some View {
        VStack(alignment: .leading) {
            Image(data.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .cornerRadius(1)
                .frame(width: 170, height: 170)
            if let subTitle = data.subTitle {
                Text(data.title)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                Text(subTitle)
                    .foregroundColor(.gray)
                    .font(.subheadline)
            } else {
                Text(data.title)
                    .foregroundColor(.gray)
                    .fontWeight(.medium)
                    .font(.body)
                    .frame(width:170)
//                    .padding(.leading,0)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
            }
        }
        .frame(width: 170)
    }
}

struct GenericCard_Previews: PreviewProvider {
    static var previews: some View {
        GenericCard(data: GenericContent.podcastsData[3])
            .previewLayout(.sizeThatFits)
            .background(Color.black)
    }
}
