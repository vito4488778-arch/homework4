//
//  ContentView.swift
//  Demo5
//
//  Created by 114iosClassStudent04 on 2025/10/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Tab("Releases", systemImage: "music.pages.fill"){
                AlbumList()
            }
            Tab("Singles", systemImage: "music.note"){
                SinglesMusic()
            }
            Tab("Characters", systemImage: "person.2"){
                    CharacterView()
                }
            Tab("About", systemImage: "person.crop.circle.fill"){
                AboutYorushika()
                }
            
        }
    }
}

#Preview {
    ContentView()
}
