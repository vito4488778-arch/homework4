//
//  MusicRow.swift
//  Demo5
//
//  Created by 114iosClassStudent04 on 2025/10/25.
//
import SwiftUI

struct AlbumRow: View {
    let album: Album
    
    var body: some View {
        HStack{
            Image(album.albumImage)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipped()
        
        VStack(alignment: .leading) {
            Text(album.albumname)
                .font(.title)
            Text(album.albumYear)
                .foregroundStyle(.gray)
                        }
            Spacer()
        }
    }
}


#Preview(traits: .sizeThatFitsLayout) {
    AlbumRow(album: Album(albumname: "盗作", albumImage: "盜作專輯", albumYear: "2020"))
}
