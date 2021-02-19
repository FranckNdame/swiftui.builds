//
//  SectionTitle.swift
//  SpotifyClone
//
//  Created by Franck-Stephane Ndame Mpouli on 03/08/2020.
//

import SwiftUI

struct SectionTitle: View {
    var title: String
    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(.white)
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.leading)
            Spacer()
        }
    }
}

struct SectionTitle_Previews: PreviewProvider {
    static var previews: some View {
        SectionTitle(title: "Good evening").previewLayout(.sizeThatFits).background(Color.black)
    }
}
