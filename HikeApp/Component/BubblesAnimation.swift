//
//  Bubble.swift
//  HikeApp
//
//  Created by Ahmed Ezz on 14/08/2023.
//

import SwiftUI

struct BubblesAnimation: View {
    
    @State var numberOfBubbles = Int.random(in: DrawingConstants.rangeOfGeneratedBubbles)
    @State var isAnimating = false
    
    func randomCordinate() -> CGFloat {
        return CGFloat.random(in: 0...DrawingConstants.dimensWidthAndHeight_3)
    }
    
    func randomSize() -> CGFloat {
        return CGFloat.random(in: DrawingConstants.rangeOfSizes)
    }
    
    func randomScale() -> CGFloat {
        return CGFloat.random(in: DrawingConstants.rangeOfScales)
    }
    
    func randomSpeed() -> Double {
        return Double.random(in: DrawingConstants.rangeOfSpeeds)
    }
    func randomDelay() -> Double {
        return Double.random(in: DrawingConstants.rangeOfDelay)
    }
   
    var body: some View {
        ZStack {
            ForEach(0...numberOfBubbles,id: \.self) { item in
                Circle().fill().foregroundColor(.red)
                    .opacity(DrawingConstants.opacity_1).position(x:randomCordinate(),y:randomCordinate()).frame(width: randomSize())
                    .scaleEffect(isAnimating ? randomScale(): DrawingConstants.defaultScale)
                    .onAppear{
                        withAnimation(.interpolatingSpring(stiffness: DrawingConstants.bubblesAnimationStiffness, damping: DrawingConstants.bubblesAnimationDamping).repeatForever().speed(randomSpeed()).delay(randomDelay())) {
                            isAnimating = true
                        }
                    }
            }
        }.frame(width: DrawingConstants.dimensWidthAndHeight_3,height: DrawingConstants.dimensWidthAndHeight_3).mask(Circle()).drawingGroup()
    }
}

struct Bubble_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.teal.ignoresSafeArea()
            BubblesAnimation()
        }
    }
}
