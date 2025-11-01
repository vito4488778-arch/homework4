//
//  MusicView.swift
//  Demo5
//
//  Created by 114iosClassStudent04 on 2025/10/25.
//
import SwiftUI

struct MusicView: View{
    let music: Music
    
    var body: some View {
        ScrollView{
            VStack{
                Image(music.coverImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 350, height: 350)
                 
                // Pass the track-specific resource name and extension
                ButtonView(fileName: music.audioFileName, fileExtension: music.audioExtension)

                ZStack{
                    RoundedRectangle(cornerRadius: 26, style: .continuous)
                        .fill(Color(red: 52/255, green: 198/255, blue: 235/255)
                        )
                        .opacity(0.5)
                    Text(music.content)
                        .padding()
                        .font(Font.largeTitle.bold())
                }
                .padding(.horizontal)
            }
        }
        .navigationTitle(music.name)
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

#Preview {
    NavigationStack{
        MusicView(
            music: Music(
                name: "花人局",
                coverImage: "盜作專輯",
                content: """
                    さよならを置いて僕に花もたせ\n
                    覚束ぬままに夜が明けて\n
                    誰もいない部屋で起きた\n
                    その温もり一つ残して\n
                    ♪
                    """,
                audioFileName: "花人局" // Preview resource name
            )
        )
    }
}
