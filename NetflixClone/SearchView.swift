//
//  SearchView.swift
//  NetflixClone
//
//  Created by chavin Panicharoen on 11/2/2565 BE.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText:String = ""
    var body: some View {
        NavigationView {
            ScrollView {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(Color(.systemGray))
                    Spacer()
                    TextField("Search your Series", text: $searchText)
                        .preferredColorScheme(.dark)
                        .font(Font.custom("Montserrat-Regular", size: 14))
                    Button(action: {
                        print("Using Mic")
                    }, label: {
                        Image(systemName: "mic.fill")
                            .foregroundColor(.white)
                    })
                }
                .frame(height:46)
                .padding(.horizontal)
                .background(Color("Gray1"))
                .cornerRadius(5)
                .padding(.horizontal,9)
                
                VStack (spacing:1) {
                    HStack {
                        Text("Popular Searches")
                            .padding()
                            .font(Font.custom("Montserrat-Bold", size: 20))
                        Spacer()
                    }
                        
                    ForEach(0..<20,id:\.self) { item in
                        HStack {
                            Rectangle()
                                .frame(width: UIScreen.main.bounds.width*0.37, height: 83, alignment: .leading)
                                .foregroundColor(.gray)
                            HStack {
                                Text("SearchResult")
                                    .font(Font.custom("Montserrat-Regular", size: 16))
                                Spacer()
                                Image(systemName: "play.fill")
                                    .padding(.trailing)
                            }
                            Spacer()
                            
                        }
                        .frame(width:UIScreen.main.bounds.width)
                        .background(Color("Gray1"))
                        
                        Divider()
                            .foregroundColor(.black)
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
