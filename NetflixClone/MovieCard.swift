//
//  MovieCard.swift
//  NetflixClone
//
//  Created by chavin Panicharoen on 11/2/2565 BE.
//

import SwiftUI

struct MovieCard: View {
    @State var movie:String
    var body: some View {
        ZStack {
            Button {
                print("Button")
            } label: {
                ZStack {
                    Image("\(movie)")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 119, height: 180, alignment: .center)
                    Image("Play")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 65, height: 65, alignment: .center)
                }
            }
        }
    }
}

struct MovieCard_Previews: PreviewProvider {
    static var previews: some View {
        MovieCard(movie: "image_movie-1")
    }
}
