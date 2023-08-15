//
//  Card.swift
//  HikeApp
//
//  Created by Ahmed Ezz on 12/08/2023.
//

import SwiftUI

struct Card: View {
    
    @State var randomNumber = 1
    @State var imageNumber = 1
    @State private var isShowingSheet: Bool = false
    @State private var isAnimating = false
    
    
    func randomImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        
        imageNumber = randomNumber
    }
    
    var body: some View {
            ZStack {
                CustomBackgroundView()
                VStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Hiking").font(.system(size: DrawingConstants.font_52)).fontWeight(.black).foregroundStyle(LinearGradient(colors: [.colorGrayLight,.colorGrayMedium], startPoint: .top, endPoint: .bottom))
                            Spacer()
                            Button {
                                isShowingSheet.toggle()
                            } label: {
                                HikingButton()
                            }.sheet(isPresented: $isShowingSheet) {
                                SettingsView().presentationDragIndicator(.visible).presentationDetents([.medium,.large])
                            }
                        }
                        Text("fun and enjoyable outdoor activity for friends and families").multilineTextAlignment(.leading).italic().foregroundColor(.colorGrayMedium)
                        ZStack {
                            ZStack {
                                Circle().fill(LinearGradient(colors: [Color.indigo ,Color.yellow ], startPoint:isAnimating ? .topLeading :.bottomLeading, endPoint: isAnimating ? .bottomTrailing: .topTrailing))
                                    .onAppear {
                                        withAnimation(.linear(duration: DrawingConstants.gradientAnimationDuration).repeatForever(autoreverses:true)) {
                                            isAnimating.toggle()
                                        }
                                }
                                BubblesAnimation()
                            }.frame(width: DrawingConstants.dimensWidthAndHeight_3, height: DrawingConstants.dimensWidthAndHeight_3)
                            Image("image-\(imageNumber)").resizable().scaledToFit().animation(.easeIn(duration: DrawingConstants.easeInAnimationDuration))
                        }
                    }.padding(.horizontal,DrawingConstants.padding_30)
                    
                    Button {
                        randomImage()
                    } label: {
                        Text("Explore More")
                            .fontWeight(.heavy)
                            .font(.title2)
                            .foregroundStyle(LinearGradient(colors: [.colorGreenLight,.colorGreenMedium], startPoint: .top, endPoint: .bottom))
                            .shadow(color: .indigo, radius: DrawingConstants.tinyRadius,x: DrawingConstants.shadowX,y: DrawingConstants.shadowY)
                    }.buttonStyle(GradientButtonStyle())
                       
                }
            }.frame(width:DrawingConstants.cardWidth,height: DrawingConstants.cardHeight)
        
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}
