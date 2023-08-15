//
//  GradientButtonStyle.swift
//  HikeApp
//
//  Created by Ahmed Ezz on 13/08/2023.
//

import Foundation
import SwiftUI

struct GradientButtonStyle : ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label.padding(.horizontal,DrawingConstants.padding_30)
            .padding(.vertical).background(
                
                configuration.isPressed ? LinearGradient(colors: [.colorGrayMedium,.colorGrayLight], startPoint: .top, endPoint: .bottom) : LinearGradient(colors: [.colorGrayLight,.colorGrayMedium], startPoint: .top, endPoint: .bottom))
            .cornerRadius(DrawingConstants.largeCornerRadius)
    }
}
