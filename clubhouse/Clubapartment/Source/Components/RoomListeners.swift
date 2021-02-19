//
//  RoomListeners.swift
//  Clubapartment
//
//  Created by Franck-Stephane Ndame Mpouli on 16/02/2021.
//

import SwiftUI

struct RoomListeners: View {
    var title: String
    var range: ClosedRange<Int>
    var body: some View {
        VStack(alignment: .leading) {
            Text("Followed by the speakers").font(.body14).foregroundColor(.gray).opacity(0.3)
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 70)), GridItem(.adaptive(minimum: 70)), GridItem(.adaptive(minimum: 70)), GridItem(.adaptive(minimum: 70))]) {
                ForEach(range.lowerBound ..< range.upperBound) { i in
                    UserCell(index: i)
                }
            }
        }.padding()
    }
}

struct RoomListeners_Previews: PreviewProvider {
    static var previews: some View {
        RoomListeners(title: "Title", range: 1...10)
    }
}
