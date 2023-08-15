//
//  CustomBackgroundView.swift
//  HikeApp
//
//  Created by Ahmed Ezz on 12/08/2023.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            
            Color.colorGreenDark.cornerRadius(DrawingConstants.largeCornerRadius).offset(y:DrawingConstants.offset_2)
            
            Color.colorGreenLight.cornerRadius(DrawingConstants.largeCornerRadius).offset(y:DrawingConstants.offset_1).opacity(DrawingConstants.opacity_2)
            
            
            LinearGradient(colors: [.colorGreenLight,
                                    .colorGreenMedium],
                           startPoint: .top, endPoint: .bottom)
            .cornerRadius(DrawingConstants.largeCornerRadius)
        }
    }
}

struct CustomBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgroundView().padding()
    }
}
