//
//  SwiftUIView.swift
//  Demo5
//
//  Created by 114iosClassStudent04 on 2025/10/30.
//
import Foundation

struct Character: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let coverImage: String
    let content: String
}
