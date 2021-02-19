//
//  EventCell.swift
//  Clubapartment
//
//  Created by Franck-Stephane Ndame Mpouli on 16/02/2021.
//

import SwiftUI

struct EventCell: View {
    var event: Event
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            Text(event.time).font(.body14).foregroundColor(.c_accent)
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Text(event.clubName).font(.body12Bold).foregroundColor(.c_black)
                    Image(Icons.home).resizable().frame(width: 12, height: 12).offset(y: -2)
                }
                Text(event.roomName).font(.body14).foregroundColor(.c_black).lineLimit(1)
            }
            Spacer()
        }
    }
}

struct EventCell_Previews: PreviewProvider {
    static var previews: some View {
        EventCell(event: Event.data[0])
    }
}
