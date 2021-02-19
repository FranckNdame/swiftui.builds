//
//  RoomView.swift
//  Clubapartment
//
//  Created by Franck-Stephane Ndame Mpouli on 16/02/2021.
//

import SwiftUI

struct RoomView: View {
    var room: Room
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(alignment: .leading) {
                HeaderSection()
                BodySection(room: room)
            }.edgesIgnoringSafeArea(.bottom)
            FooterSection()
        }.backgroundOverlay()
    }
}

struct RoomView_Previews: PreviewProvider {
    static var previews: some View {
        RoomView(room: Room.data[0])
    }
}

private struct HeaderSection: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        HStack(spacing: 24) {
            Button(action:{ presentationMode.wrappedValue.dismiss() }) {
                Image(systemName: "chevron.down")
                Text("All rooms").font(.body14Bold)
            }.foregroundColor(.c_black)
            Spacer()
            Button(action:{}) { Image(Icons.file).resizable().frame(width: 20, height: 24) }
            Image(Images.user1).resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 30, height: 30).foregroundColor(.c_accent)
                .clipped()
                .cornerRadius(12)
        }.padding().padding(.top, 32)
    }
}

private struct BodySection: View {
    var room: Room
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                TitleSection(room: room)
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 70)), GridItem(.adaptive(minimum: 70)), GridItem(.adaptive(minimum: 70))]) {
                    ForEach(1 ..< 10) { i in
                        UserCell(index: i, isLarge: true)
                    }
                }
                RoomListeners(title: "Followed by the speakers", range: 10...15)
                RoomListeners(title: "Others in the room", range: 15...23)
            }.padding().padding(.bottom, 72)
        }
        .frame(width: UIScreen.screenWidth, height: UIScreen.screenHeight - 90)
        .background(Color.white)
        .cornerRadius(32)
    }
}

struct TitleSection: View {
    var room: Room
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 4) {
                if let clubName = room.club {
                    HStack {
                        Text(clubName).font(.body12Bold).foregroundColor(.c_black)
                        Image(Icons.home).resizable().frame(width: 12, height: 12).offset(y: -2)
                    }
                }
                if let title = room.title {
                    Text(title).font(.body16Bold)
                }
            }
            Spacer()
            Button(action: {}, label: {
                Text("•••").font(.body12)
            })
        }.foregroundColor(.c_black).padding(8)
    }
}


private struct FooterSection: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            Spacer()
            HStack(spacing: 16) {
                Button(action: { presentationMode.wrappedValue.dismiss() }, label: {
                    Text("✌🏾 Leave quietly").font(.body16Bold).foregroundColor(.c_red)
                }).padding(.vertical, 8).padding(.horizontal).background(Color.black.opacity(0.06)).cornerRadius(32)
                Spacer()
                Button(action:{}) { Image(Icons.plus).resizable().frame(width: 20, height: 20) }
                    .padding(8).background(Color.black.opacity(0.06)).cornerRadius(32)
                Button(action:{}) { Image(Icons.hand).resizable().frame(width: 26, height: 26) }
                    .padding(5).background(Color.black.opacity(0.06)).cornerRadius(32)
            }.padding().padding(.bottom, 32).background(Color.c_white)
        }
    }
}

