//
//  DownloadView.swift
//  NetflixClone
//
//  Created by chavin Panicharoen on 11/2/2565 BE.
//

import SwiftUI

struct DownloadView: View {
    var body: some View {
        ZStack {
            VStack {
                Image("DownloadIllus")
                Text("Movies and TV shows that you download appear here.")
                    .frame(width:295)
                    .font(Font.custom("Montserrat-Regular", size: 19))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
            }
            VStack {
                Spacer()
                Button {
                    print("Download")
                } label: {
                    ZStack {
                        Text("Find Something to Download")
                            .font(Font.custom("Montserrat-Regular", size: 15))
                            .foregroundColor(.black)
                    }
                    .frame(width: 280, height: 42, alignment: .center)
                    .background(.white)
                    .cornerRadius(6)
                }

            }
            .frame(height:500)
        }
        .frame(maxWidth:.infinity,maxHeight: .infinity)
        .background(.black)
    }
}

struct DownloadView_Previews: PreviewProvider {
    static var previews: some View {
        DownloadView()
    }
}
