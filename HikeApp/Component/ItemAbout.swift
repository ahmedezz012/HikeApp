//
//  ItemAbout.swift
//  HikeApp
//
//  Created by Ahmed Ezz on 15/08/2023.
//

import SwiftUI

struct ItemAbout: View {
    
    var itemAboutModel: ItemAboutModel
    var body: some View {
        LabeledContent {
            if itemAboutModel.contentUrl == nil {
                Text(itemAboutModel.content)
            } else
            {
                Link(itemAboutModel.content, destination: URL(string: itemAboutModel.contentUrl!)!)
            }
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: DrawingConstants.smallCornerRadius).frame(width: DrawingConstants.dimensWidthAndHeight_1, height: DrawingConstants.dimensWidthAndHeight_1).foregroundColor(itemAboutModel.backgroundColor)
                    Image(systemName: itemAboutModel.imageName).foregroundColor(itemAboutModel.foregroundColor)
                }
                Text(itemAboutModel.label)
            }
        }
        
    }
}

struct ItemAbout_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.yellow
            ItemAbout(itemAboutModel:ItemAboutModel(label: "Application name", imageName: "apps.iphone", content: "Hike", backgroundColor: .blue, foregroundColor: .white))
        }
    }
}
