//
//  Music.swift
//  Demo5
//
//  Created by 114iosClassStudent04 on 2025/10/25.
//

import Foundation

struct Music: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let coverImage: String
    let content: String

    // Default to a shared bundle resource so existing initializers still compile.
    // You can later override per song in your arrays.
    let audioFileName: String
    let audioExtension: String

    init(
        name: String,
        coverImage: String,
        content: String,
        audioFileName: String = "MusicResource",
        audioExtension: String = "mp3"
    ) {
        self.name = name
        self.coverImage = coverImage
        self.content = content
        self.audioFileName = audioFileName
        self.audioExtension = audioExtension
    }
}
