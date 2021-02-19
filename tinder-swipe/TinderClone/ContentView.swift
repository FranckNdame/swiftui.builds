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
            NavigationSection()
            CardsSection()
            FooterSection()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}



