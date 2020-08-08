//
//  ContentView.swift
//  TinderClone
//
//  Created by Franck-Stephane Ndame Mpouli on 06/08/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            /// Top  Stack
            HStack {
                Button(action: {}) {
                    Image("profile")
                }
                Spacer()
                Button(action: {}) {
                    Image("tinder-icon")
                        .resizable().aspectRatio(contentMode: .fit).frame(height:45)
                }
                
                Spacer()
                Button(action: {}) {
                    Image("chats")
                }
            }.padding([.horizontal, .bottom])
            ZStack{
//                RoundedRectangle(cornerRadius: 15)
                ForEach(Card.data.reversed()) { card in
                    CardView(card: card)
                }
            }
            .padding(8)
            
            // MARK: - BUG 1
            .zIndex(1.0)
            /// Top  Stack
            // Do not add spacing
            HStack(spacing:0) {
                Button(action: {}) {
                    Image("refresh")
                }
                Button(action: {}) {
                    Image("dismiss")
                }
                Button(action: {}) {
                    Image("super_like")
                }
                Button(action: {}) {
                    Image("like")
                }
                Button(action: {}) {
                    Image("boost")
                }
            }
        }
    }
}

struct CardView: View {
    @State var card: Card
    //    var geometrySize: CGSize
    
    // MARK: - Drawing Constant
    let cardGradient = Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.5)])
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            // Image - Explain
            Image(card.imageName)
                .resizable()
            
            // Linear Gradient
            LinearGradient(gradient: cardGradient, startPoint: .top, endPoint: .bottom)
            VStack {
                Spacer()
                VStack(alignment: .leading){
                    HStack {
                        Text(card.name).font(.largeTitle).fontWeight(.bold)
                        Text(String(card.age)).font(.title)
                    }
                    Text(card.bio).font(.body)
                }
            }
            .padding()
            .foregroundColor(.white)
            
            // MARK: - LATER
            HStack {
                Image("yes")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:150)
                    // MARK: - BUG 2
                    .opacity(Double(card.x/10 - 1))
                Spacer()
                Image("nope")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:150)
                    // MARK: - BUG 3
                    .opacity(Double(card.x/10 * -1 - 1))
            }
            
            // --------------------
        }
        
        .cornerRadius(8)
        // MARK: - BUG 4
        // LEAVE OUT
        .offset(x: card.x, y: card.y)
        .rotationEffect(.init(degrees: card.degree))
        .gesture (
            DragGesture()
                .onChanged { value in
                    withAnimation(.default) {
                        print("x:", value.translation.width)
                        print("y:", value.translation.height)
                        card.x = value.translation.width
                        // MARK: - BUG 5
                        card.y = value.translation.height
                        card.degree = 7 * (value.translation.width > 0 ? 1 : -1)
                    }
                }
                .onEnded { (value) in
                    withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 50, damping: 8, initialVelocity: 0)) {
                        switch value.translation.width {
                        case 0...100:
                            card.x = 0; card.degree = 0; card.y = 0
                        case let x where x > 100:
                            card.x = 500; card.degree = 12
                        case (-100)...(-1):
                            card.x = 0; card.degree = 0; card.y = 0
                        case let x where x < -100:
                            card.x  = -500; card.degree = -12
                        default:
                            card.x = 0; card.y = 0
                        }
                    }
                }
        )
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

