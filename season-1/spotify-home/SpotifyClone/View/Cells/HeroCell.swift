//
//  HeroCell.swift
//  SpotifyClone
//
//  Created by Franck-Stephane Ndame Mpouli on 03/08/2020.
//

import SwiftUI

struct HeroCell: View {
    var data: GenericContent
    var body: some View {
        HStack {
            Image(data.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text(data.title)
                
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .font(.footnote)
                .lineLimit(2)
            Spacer()
        }
        .frame(height: 60)
        .background(Color.white.opacity(0.085))
        .cornerRadius(5)
    }
}

struct HeroCell_Previews: PreviewProvider {
    static var previews: some View {
        HeroCell(data: GenericContent.heroData[0]).previewLayout(.sizeThatFits).background(Color.black)
    }
}
