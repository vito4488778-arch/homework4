//
//  SwiftUIView.swift
//  Demo5
//
//  Created by 114iosClassStudent04 on 2025/10/27.
//

import SwiftUI

struct AlbumList: View {
    let albums = [
        Album(albumname: "幻燈", albumImage: "幻燈", albumYear: "2023"),
        Album(albumname: "盗作", albumImage: "盜作專輯", albumYear: "2020"),
        Album(albumname: "エルマ", albumImage: "Elma", albumYear: "2019"),
        Album(albumname: "だから僕は音楽を辞めた", albumImage: "だから僕は音楽を辞めた", albumYear: "2019"),
        Album(albumname: "負け犬にアンコールはいらない", albumImage: "負け犬にアンコールはいらない", albumYear: "2018"),
        Album(albumname: "夏草が邪魔をする", albumImage: "夏草が邪魔をする", albumYear: "2017")
    ]
    
    var body: some View {
        NavigationStack {
                List {
                    ForEach(albums) { album in
                        NavigationLink {
                            if album.albumname == "盗作" {
                                PlagiarismMusic()
                            } else if album.albumname == "幻燈" {
                                GentoMusic()
                            } else if album.albumname == "エルマ" {
                                ElmaMusic()
                            } else if album.albumname == "負け犬にアンコールはいらない" {
                                LoserMusic()
                            } else if album.albumname == "夏草が邪魔をする" {
                                SummerGrassMusic()
                            } else if album.albumname == "だから僕は音楽を辞めた" {
                                SoIQuitTheMusic()
                            }
                        } label: {
                            AlbumRow(album: album)
                        }
                        
                    }
                }
                .navigationTitle("Yorushika")
                
                .scrollContentBackground(.hidden)
                .background{
                    Image("Yorushika_logo")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                        .opacity(0.4)
                }
                
            }
            
        }
    }


#Preview {
    AlbumList()
}
