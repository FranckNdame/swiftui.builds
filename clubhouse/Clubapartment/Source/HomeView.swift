//
//  HomeView.swift
//  Clubapartment
//
//  Created by Franck-Stephane Ndame Mpouli on 16/02/2021.
//

import SwiftUI

struct HomeView: View {
    @State var selectedRoom: Room? = .none
    var body: some View {
        ZStack {
            VStack {
                HomeNavigationSection()
                ScrollView {
                    EventsSection()
                    RoomsSection(selectedRoom: $selectedRoom)
                }
            }
            .backgroundOverlay()
            FooterSection()
        }
        .fullScreenCover(item: $selectedRoom) { room in
            RoomView(room: room)
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

private struct HomeNavigationSection: View {
    var body: some View {
        HStack(spacing: 18) {
            Button(action: {}){Image(Icons.search).iconStyle()}
            Spacer()
            Button(action: {}){Image(Icons.invites).iconStyle()}
            Button(action: {}){Image(Icons.calendar).resizable().frame(width: 23, height: 23).offset(y: 1)}
            Button(action: {}){Image(Icons.notification).iconStyle()}
            Button(action: {}){Image(Images.user1).resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 32, height: 32).foregroundColor(.c_accent)
                .clipped()
                .cornerRadius(12)}
        }.padding([.top, .horizontal])
    }
}

private struct TestSection: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    HStack {
                        Text("Hello world! 🔎")
                        Text("Welcome to Club apartment. We hope you enjoy your stay ✌🏾")
                    }
                }
                Spacer()
                ForEach(0 ..< 5) { item in
                    RoundedRectangle(cornerRadius: 25.0).foregroundColor(.red)
                        .frame(width: 200, height: 300, alignment: .center)
                        .padding().padding([.vertical, .leading], 45)
                }
            }
        }
    }
}

private struct AnotherTestSection: View {
    
    var body: some View {
        VStack {
            HStack {
                HStack {
                    VStack {
                        Text("Hello world!")
                        Text("This should work!")
                    }
                }
            }
        }
    }
}





private struct EventsSection: View {
    var body: some View {
        HStack {
            VStack(spacing: 16
            ) {
                ForEach(Event.data) { item in
                    EventCell(event: item)
                }
            }
            Spacer()
        }
        .padding()
        .background(Color.c_dim_brown)
        .cornerRadius(25.0)
        .padding()
    }
}

private struct SuggestionsSection: View {
    var body: some View {
        HStack {
            VStack(spacing: 16) {
                Text("Clubapartment is full of interesting people")
            }
        }
    }
}

private struct RoomsSection: View {
    @Binding var selectedRoom: Room?
    var body: some View {
        VStack(spacing: 16) {
            ForEach(Room.data) { item in
                RoomCell(room: item)
                    .onTapGesture {
                        UIImpactFeedbackGenerator().impactOccurred()
                        selectedRoom = item
                    }
            }
        }.padding(.bottom, 72)
    }
}

private struct FooterSection: View {
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                Rectangle().frame(height: 80)
                    .overlay(LinearGradient.home)
                    .foregroundColor(.c_background)
                    .blur(radius: 20).offset(y: 6.0)
                Button(action: {}, label: {
                    Text("+ Start a room")
                })
                .font(.title20)
                .foregroundColor(.c_white)
                .padding(.vertical,8).padding(.horizontal)
                .background(Color.c_green)
                .cornerRadius(30)
                .padding(.bottom, 48)
                HStack {
                    Spacer()
                    Button(action: {}, label: {
                        Image(Icons.chat).resizable().frame(width: 38, height: 30)
                    })
                }
                .padding(.bottom, 48).padding(.horizontal)
            }
        }.ignoresSafeArea(.all)
    }
}
