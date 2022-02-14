//
//  ContentView.swift
//  NetflixClone
//
//  Created by chavin Panicharoen on 10/2/2565 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    ZStack (alignment:.bottom) {
                        ZStack(alignment:.bottom) {
                            Image("homebg")
                                .resizable()
                            .scaledToFill()
                            Rectangle()
                                .frame(width: geometry.size.width, height: 300, alignment: .center)
                                .foregroundStyle(
                                    LinearGradient(colors: [Color.clear,Color.black], startPoint: .top, endPoint: .bottom)
                                )
                                .blur(radius: 10)
                                .blendMode(.overlay)
                        }
                        VStack (spacing:19) {
                            VStack {
                                Text("Stranger")
                                Text("Things")
                            }
                            .font(Font.custom("Montserrat-Bold", size: 35))
                            .foregroundColor(.white)
                            HStack{
                                Text("TV Shows")
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 4))
                                Text("textTwo")
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 4))
                                Text("TV Shows")
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 4))
                                Text("US")
                            }
                            .font(Font.custom("Montserrat-Regular", size: 12))
                            .foregroundColor(.white)
                            HStack (spacing:37) {
                                VStack (spacing:7) {
                                    Spacer()
                                    Image(systemName: "checkmark")
                                        .font(.system(size: 20).bold())
                                        .foregroundColor(.white)
                                    Text("My List")
                                        .font(Font.custom("Montserrat-Regular", size: 12))
                                        .foregroundColor(.white)
                                }
                                Button {
                                    print("Play")
                                } label: {
                                    VStack {
                                        ZStack {
                                            RoundedRectangle(cornerRadius: 5)
                                                .frame(width: 101, height: 38, alignment: .center)
                                            .foregroundColor(.white)
                                            HStack {
                                                Image(systemName: "play.fill")
                                                    .font(.system(size: 20))
                                                Text("Play")
                                                    .font(Font.custom("Montserrat.bold", size: 16))
                                            }
                                            .foregroundColor(.black)
                                        }
                                        Spacer()
                                    }
                                }
                                
                                VStack (spacing:8) {
                                    Spacer()
                                    Image(systemName: "info.circle")
                                        .font(.system(size: 20).bold())
                                        .foregroundColor(.white)
                                    Text("Info")
                                        .font(Font.custom("Montserrat-Regular", size: 12))
                                        .foregroundColor(.white)
                                }
                            }
                            .frame(width: geometry.size.width, height: 60, alignment: .center)
                        }
                        .frame(maxWidth:.infinity)
                    }
                    .frame(maxWidth:.infinity)
                    VStack {
                        HStack {
                            Text("Previews")
                                .font(Font.custom("Montserrat-Bold", size: 19))
                                .foregroundColor(.white)
                            Spacer()
                        }
                        ScrollView(.horizontal) {
                            HStack {
                                Button {
                                    print("Navigate")
                                } label: {
                                    Image("Ellipse 7")
                                }
                                Button {
                                    print("Navigate")
                                } label: {
                                    Image("Ellipse 8")
                                }
                                Button {
                                    print("Navigate")
                                } label: {
                                    Image("Ellipse 10")
                                }

                                Spacer()
                            }
                        }
                    }
                    .padding(.leading,7)
                    .padding(.top,30)
                    VStack {
                        HStack {
                            Text("Continue Watching for Loong")
                                .font(Font.custom("Montserrat-Bold", size: 19))
                                .foregroundColor(.white)
                            Spacer()
                        }
                        ScrollView {
                            HStack {
                                MovieCarousel()
                            }
                        }
                    }
                    .padding(.leading,7)
                    .padding(.top,30)
                    
                    VStack {
                        HStack {
                            Text("My List")
                                .font(Font.custom("Montserrat-Bold", size: 19))
                                .foregroundColor(.white)
                            Spacer()
                        }
                        ScrollView {
                            HStack {
                                MovieCarousel()
                            }
                        }
                    }
                    .padding(.leading,7)
                    .padding(.top,30)
                    
                    VStack {
                        HStack {
                            Text("Europe movie")
                                .font(Font.custom("Montserrat-Bold", size: 19))
                                .foregroundColor(.white)
                            Spacer()
                        }
                        ScrollView {
                            HStack {
                                MovieCarousel()
                            }
                        }
                    }
                    .padding(.leading,7)
                    .padding(.top,30)
                    
                    
                    
                    Color.clear.frame(height:97)
                }
            }
        }
        .background(.black)
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
