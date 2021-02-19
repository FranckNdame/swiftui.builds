//
//  CA+Modifier.swift
//  Clubapartment
//
//  Created by Franck-Stephane Ndame Mpouli on 16/02/2021.
//

import SwiftUI


extension View {
    
    func backgroundOverlay(color: Color = .c_background) -> some View {
        ZStack {
            color.ignoresSafeArea(.all)
            self
        }
    }
}


extension Image {
    func iconStyle() -> some View {
        self.resizable().frame(width: 30, height: 30)
    }
}
