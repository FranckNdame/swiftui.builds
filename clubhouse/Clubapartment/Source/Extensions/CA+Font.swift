//
//  CA+Font.swift
//  Clubapartment
//
//  Created by Franck-Stephane Ndame Mpouli on 16/02/2021.
//

import SwiftUI

enum NunitoWeight: String {
    case light = "Nunito-Light"
    case regular = "Nunito-Regular"
    case semiBold = "Nunito-SemiBold"
    case bold = "Nunito-Bold"
    case extraBold = "Nunito-ExtraBold"
    case black = "Nunito-Black"
}

extension Font {
    /// Weight: Bold, Size: 20
    static var title20: Font { Font.nunito(weight: .bold, size: 20) }
    /// Weight: Regular, Size: 16
    static var body16: Font { Font.nunito(weight: .semiBold, size: 16) }
    /// Weight: Bold, Size: 16
    static var body16Bold: Font { Font.nunito(weight: .bold, size: 16) }
    /// Weight: Regular, Size: 14
    static var body14: Font { Font.nunito(weight: .semiBold, size: 14)}
    /// Weight:  Bold, Size: 14
    static var body14Bold: Font { Font.nunito(weight: .bold, size: 14) }
    /// Weight: Bold, Size: 12
    static var body12: Font { Font.nunito(weight: .semiBold, size: 12) }
    /// Weight: Bold, Size: 12
    static var body12Bold: Font { Font.nunito(weight: .bold, size: 12) }
}

private extension Font {
    static func nunito(weight: NunitoWeight, size: CGFloat) -> Font {
        Font.custom(weight.rawValue, size: size)
    }
}
