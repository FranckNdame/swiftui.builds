//
//  HeroSection.swift
//  SpotifyClone
//
//  Created by Franck-Stephane Ndame Mpouli on 03/08/2020.
//

import SwiftUI

struct HeroSectionView: View {
    private var flexibleLayout = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        
        VStack(spacing:0) {
            SectionTitle(title: "Good evening")
            LazyVGrid(
                columns: flexibleLayout,
                spacing: 8
            ) {
                ForEach(GenericContent.heroData) { item in
                    HeroCell(data: item)
                }
                
            }
            .padding()
        }
    }
}


struct HeroSection_Previews: PreviewProvider {
    static var previews: some View {
        HeroSectionView().previewLayout(.sizeThatFits).background(Color.black)
    }
}


