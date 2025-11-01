//
//  Album.swift
//  Demo5
//
//  Created by 114iosClassStudent04 on 2025/10/27.
//

import Foundation

struct Album: Identifiable, Hashable {
    let id = UUID()
    let albumname: String
    let albumImage: String
    let albumYear: String
}
