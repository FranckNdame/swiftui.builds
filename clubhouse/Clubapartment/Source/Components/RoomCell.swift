//
//  RoomCell.swift
//  Clubapartment
//
//  Created by Franck-Stephane Ndame Mpouli on 16/02/2021.
//

import SwiftUI

struct RoomCell: View {
    var room: Room
    var body: some View {
        VStack(alignment:.leading) {
            VStack(alignment: .leading, spacing: 4) {
                if let club = room.club {
                    HStack {
                        Text(club).font(.body12Bold).foregroundColor(.c_black)
                        Image(Icons.home).resizable().frame(width: 12, height: 12).offset(y: -2)
                    }
                }
                if let title = room.title {
                    Text(title).font(.body16Bold)
                }
            }.padding(.bottom, 4)
            
            HStack {
                VStack(alignment:.leading) {
                    ZStack(alignment:.topLeading) {
                        Image(room.avatars[0]).resizable().aspectRatio(contentMode: .fill).frame(width: 35, height: 35).clipped().cornerRadius(16)
                        Image(room.avatars[1]).resizable().aspectRatio(contentMode: .fill).frame(width: 35, height: 35).clipped().cornerRadius(16).offset(x: 20, y: 22)
                    }.padding(.leading, -8)
                    Spacer()
                }.frame(width: 70)
                VStack(alignment:.leading) {
                    ForEach(room.names, id: \.self) { name in
                        Text("\(name) 💬").font(.body16)
                    }
                    HStack {
                        HStack(spacing:4) {
                            Text(room.participantsCount)
                            Image(Icons.user).resizable().frame(width: 10, height: 12).offset(y: -1)
                        }
                        Text("/")
                        HStack(spacing:4) {
                            Text(room.speakersCount)
                            Image(Icons.chatGray).resizable().frame(width: 12, height: 12).offset(y: -1)
                        }
                    }.font(.body14).foregroundColor(.gray)
                }
                Spacer()
            }
        }
        .padding().padding(.vertical, 8)
        .background(Color.c_white)
        .cornerRadius(25.0)
        .shadow(color: Color.black.opacity(0.2), radius: 1, y: 1)
        .padding(.horizontal)
    }
}

struct RoomCell_Previews: PreviewProvider {
    static var previews: some View {
        RoomCell(room: Room.data[0])
    }
}
