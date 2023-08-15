//
//  HikingButton.sfigure.hikingwift
//  HikeApp
//
//  Created by Ahmed Ezz on 12/08/2023.
//

import SwiftUI

struct HikingButton: View {
    var body: some View {
        ZStack {
            Circle().fill((LinearGradient(colors: [.white,.colorGreenLight,.colorGreenMedium], startPoint: .top, endPoint: .bottom)))
            Circle().stroke(LinearGradient(colors: [.colorGrayLight,.colorGrayMedium], startPoint: .top, endPoint: .bottom),lineWidth: DrawingConstants.lineWidth_1)
            Image(systemName: "figure.hiking").fontWeight(.black).font(.system(size: DrawingConstants.font_30)).foregroundStyle(LinearGradient(colors: [.colorGrayLight,.colorGrayMedium], startPoint: .top, endPoint: .bottom))
        }.frame(width: DrawingConstants.dimensWidthAndHeight_2,height: DrawingConstants.dimensWidthAndHeight_2)
    }
}

struct HikingButton_Previews: PreviewProvider {
    static var previews: some View {
        HikingButton().previewLayout(.sizeThatFits)
    }
}
