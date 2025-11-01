//
//  MusicRow.swift
//  Demo5
//
//  Created by 114iosClassStudent04 on 2025/10/25.
//
import SwiftUI

struct MusicRow: View {
    let music: Music
    
    var body: some View {
        HStack{
            Image(music.coverImage)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipped()
        
        VStack(alignment: .leading) {
            Text(music.name)
                .font(.title)
            Text("Yorushika")
                .foregroundStyle(.gray)
                        }
            Spacer()
        }
    }
}


#Preview(traits: .sizeThatFitsLayout) {
    MusicRow(music: Music(name: "花人局", coverImage: "盜作專輯", content: "さよならを置いて僕に花もたせ"))
}
