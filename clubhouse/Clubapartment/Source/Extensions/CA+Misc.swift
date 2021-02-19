//
//  CA+Misc.swift
//  Clubapartment
//
//  Created by Franck-Stephane Ndame Mpouli on 16/02/2021.
//

import SwiftUI

extension LinearGradient {
    static let home = LinearGradient(gradient: Gradient(colors: [Color.c_background.opacity(0.4), Color.c_background]),
                                               startPoint: .top,
                                               endPoint: .bottom)
}

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}
