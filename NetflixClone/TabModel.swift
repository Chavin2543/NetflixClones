//
//  TabModel.swift
//  NetflixClone
//
//  Created by chavin Panicharoen on 11/2/2565 BE.
//

import Foundation
import SwiftUI

struct TabModel:Identifiable {
    var id = UUID()
    var logo: String
    var tab:Tab
}

var TabItems = [
    TabModel(logo: "house", tab:.home),
    TabModel(logo: "safari", tab:.discover),
    TabModel(logo: "plus.square", tab:.post),
    TabModel(logo: "bell", tab:.notification),
    TabModel(logo: "person", tab:.profile)
]

enum Tab:String {
    case home
    case discover
    case post
    case notification
    case profile
}
