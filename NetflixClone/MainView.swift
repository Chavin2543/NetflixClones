//
//  MainView.swift
//  NetflixClone
//
//  Created by chavin Panicharoen on 11/2/2565 BE.
//

import SwiftUI

struct MainView: View {
    @State var selectedTab:Tab = .home
    var body: some View {
        ZStack (alignment:.bottom) {
            Group {
                switch selectedTab {
                case .home:
                    ContentView()
                case .discover:
                    SearchView()
                case .post:
                    ComingSoonView()
                case .notification:
                    DownloadView()
                case .profile:
                    MoreView()
                }
            }.frame(maxWidth:.infinity,maxHeight: .infinity)
            
            HStack {
                ForEach(TabItems) { item in
                    Button {
                        selectedTab = item.tab
                    } label: {
                        Image(systemName: item.logo)
                            .symbolVariant(.fill)
                            .frame(maxWidth:.infinity)
                            .padding(4)
                            .background(
                                Circle()
                                    .foregroundColor(selectedTab == item.tab ? .black : .clear)
                            )
                    }
                    .foregroundStyle(
                        selectedTab == item.tab ?
                            .red : .white
                    )
                    .offset(x: 0, y: selectedTab == item.tab ? -20 : 0)
                    .font(
                        selectedTab == item.tab ?
                            .title2.bold() : .body
                    )
                }
            }
            .frame(height:49)
            .background(.black)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
