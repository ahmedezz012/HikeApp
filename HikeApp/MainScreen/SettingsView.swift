//
//  SettingsView.swift
//  HikeApp
//
//  Created by Ahmed Ezz on 13/08/2023.
//

import SwiftUI

struct SettingsView: View {
    private var appIcons = ["AppIcon-Backpack","AppIcon-Camera",
    "AppIcon-Campfire","AppIcon-Map","AppIcon-Mushroom",
    "AppIcon-MagnifyingGlass"]
    
    private var aboutItems = [ItemAboutModel(label: "Application name", imageName: "apps.iphone", content: "Hike", backgroundColor: .blue, foregroundColor: .white),
                              ItemAboutModel(label: "Comptability", imageName: "apps.iphone", content: "iphone & ipad", backgroundColor: .red, foregroundColor: .white),
                              ItemAboutModel(label: "Technology", imageName: "swift", content: "Swift & SwiftUI", backgroundColor: .orange, foregroundColor: .white),
                              ItemAboutModel(label: "Developer", imageName: "ellipsis.curlybraces", content: "Ahmed Ezz", backgroundColor: .mint, foregroundColor: .white),
                              ItemAboutModel(label: "Github", imageName: "globe", content: "click to open", backgroundColor: .indigo, foregroundColor: .white,
                                            contentUrl: "https://github.com/ahmedezz012")]
    
    
    var body: some View {
        List() {
            ScrollView {
                Section {
                    HStack {
                        Spacer()
                        Image(systemName: "laurel.leading").font(.system(size: 80,weight: .black))
                        VStack {
                            Text("Hike").font(.system(size: 66,weight: .black))
                            Text("Editors Choice").fontWeight(.medium)
                        }
                        Image(systemName: "laurel.trailing").font(.system(size: 80,weight: .black))
                        Spacer()
                    }.foregroundStyle(LinearGradient(colors: [.colorGreenLight, .colorGreenMedium, .colorGreenDark], startPoint: .top, endPoint: .bottom))
                    
                    VStack(spacing: 8) {
                        Text("Where can you find\nperfect tracks?").font(.title2).fontWeight(.heavy)
                        Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                            .font(.footnote)
                            .italic()
                        Text("Dust off the boots! It's time for a walk.")
                            .fontWeight(.heavy)
                            .foregroundColor(.colorGreenMedium).padding(.bottom,10)
                    }.multilineTextAlignment(.center).padding(.bottom,16).frame(maxWidth: .infinity)
                    
                }.listRowSeparator(.hidden)
            }
            
            Section(header: Text("Choose app icon")) {
                VStack {
                    ScrollView(.horizontal,showsIndicators: false) {
                        HStack(spacing: 12) {
                            ForEach(appIcons.indices,id:\.self){ item in
                                Button {
                                    UIApplication.shared.setAlternateIconName( appIcons[item]) {error in
                                        if error != nil {
                                            print(error?.localizedDescription)
                                        } else {
                                            print("Success")
                                        }
                                    }
                                } label: {
                                    Image("\(appIcons[item])-Preview")
                                        .resizable().scaledToFit().frame(width: 80,height: 80).cornerRadius(10)
                                }
                            }
                        }
                    }
                    
                    Text("Choose your prefered app icon").foregroundColor(.secondary).font(.footnote).frame(minWidth: 0,maxWidth: .infinity).multilineTextAlignment(.center).padding(.top,5)
                }
            }.listRowSeparator(.hidden)
            
            Section(header: Text("About the app"),footer: Text("Copy rights Ahmed Ezz")) {
                ScrollView {
                     LazyVStack {
                         ForEach(aboutItems,  id: \.self) {
                       item in
                         ItemAbout(itemAboutModel: item)
                        }
                       }
                    }.padding(.top,12.0)
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
