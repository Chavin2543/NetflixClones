//
//  MovieCarousel.swift
//  NetflixClone
//
//  Created by chavin Panicharoen on 11/2/2565 BE.
//

import SwiftUI

struct MovieCarousel: View {
    var body: some View {
        ZStack {
            ScrollView(.horizontal) {
                HStack {
                    ForEach(MoviesItem,id:\.self) { item in
                            MovieCard(movie: item)
                    }
                }
            }
        }
    }
}

struct MovieCarousel_Previews: PreviewProvider {
    static var previews: some View {
        MovieCarousel()
    }
}

