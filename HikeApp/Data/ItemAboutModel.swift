//
//  ItemAbout.swift
//  HikeApp
//
//  Created by Ahmed Ezz on 15/08/2023.
//

import Foundation
import SwiftUI

struct ItemAboutModel : Hashable {
    var label: String
    var imageName: String
    var content: String
    var backgroundColor: Color
    var foregroundColor: Color
    var contentUrl: String? = nil
}
