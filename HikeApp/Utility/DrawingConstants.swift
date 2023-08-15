//
//  DrawingConstants.swift
//  HikeApp
//
//  Created by Ahmed Ezz on 15/08/2023.
//

import Foundation

struct DrawingConstants {
    static let largeCornerRadius : CGFloat = 40
    static let smallCornerRadius : CGFloat = 8
    static let tinyRadius : CGFloat = 0.75
    
    static let offset_1 : CGFloat = 3
    static let offset_2 : CGFloat = 12
    
    static let opacity_1: Double = 0.25
    static let opacity_2: Double = 0.85
    
    static let dimensWidthAndHeight_1: CGFloat = 30
    static let dimensWidthAndHeight_2: CGFloat = 58
    static let dimensWidthAndHeight_3: CGFloat = 256
    
    static let padding_30: CGFloat = 30
    static let font_30: CGFloat = 30
    static let font_52: CGFloat = 52
    
    static let lineWidth_1: CGFloat = 4
    static let rangeOfSizes: ClosedRange<CGFloat> = 10...70
    static let rangeOfScales: ClosedRange<CGFloat> = 0.8...2
    static let rangeOfSpeeds: ClosedRange<Double> = 0.01...1
    static let rangeOfDelay: ClosedRange<Double> = 0...2
    static let rangeOfGeneratedBubbles: ClosedRange<Int> = 12...20
    
    static let bubblesAnimationStiffness = 0.5
    static let bubblesAnimationDamping = 0.5
    static let defaultScale : CGFloat = 1
    static let gradientAnimationDuration = 3.0
    
    static let easeInAnimationDuration = 0.8
    static let cardWidth : CGFloat = 320
    static let cardHeight : CGFloat = 570
    static let shadowX : CGFloat = 1
    static let shadowY : CGFloat = 3
    
}
