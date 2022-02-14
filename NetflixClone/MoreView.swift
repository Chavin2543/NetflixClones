//
//  MoreView.swift
//  NetflixClone
//
//  Created by chavin Panicharoen on 11/2/2565 BE.
//

import SwiftUI

struct MoreView: View {
    var body: some View {
        ZStack {
            VStack (spacing:30) {
                Image("NetflixLogoRed")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 40, alignment: .center)
                Image("Profile")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200, alignment: .center)
                .cornerRadius(200)
                Text("Made by\nChavin Panicharoen")
                    .font(Font.custom("Montserrat-Regular", size: 19))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
            }
        }
        .frame(maxWidth:.infinity,maxHeight: .infinity)
        .background(.black)
    }
}

struct MoreView_Previews: PreviewProvider {
    static var previews: some View {
        MoreView()
    }
}
