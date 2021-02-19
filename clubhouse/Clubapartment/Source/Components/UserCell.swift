//
//  UserCell.swift
//  Clubapartment
//
//  Created by Franck-Stephane Ndame Mpouli on 16/02/2021.
//

import SwiftUI

struct UserCell: View {
    var index: Int
    var isLarge: Bool = false
    var body: some View {
        VStack {
            let SIZE: CGFloat = isLarge ? 70 : 55
            Image("user-\(index)")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: SIZE, height: SIZE)
                .clipped()
                .cornerRadius(isLarge ? 30 : 22)
                .overlay(RoundedRectangle(cornerRadius: isLarge ? 30 : 20).stroke(Color.gray.opacity(0.2), lineWidth: 0.6))
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.white, lineWidth: index == 1 ? 6 : 0))
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.c_accent.opacity(0.5),lineWidth: index == 1 ? 2.5 : 0))
            HStack(spacing: 4) {
                if index < 5 { Image(Icons.moderator).resizable().frame(width: 14, height: 14) }
                Text(Names.names[index].split(separator: " ")[0]).font(.body14Bold)
            }
        }
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell(index: 0)
    }
}
