//
//  SwiftUIView.swift
//  Demo5
//
//  Created by 114iosClassStudent04 on 2025/10/29.
//

import SwiftUI
import AVFAudio
import Combine

private final class SoundPlayer: NSObject, ObservableObject {
    @Published var isPlaying: Bool = false

    private var audioPlayer: AVAudioPlayer?

    var hasAudioLoaded: Bool {
        audioPlayer != nil
    }

    func load(named filename: String, withExtension ext: String) {
        stop()
        guard let url = Bundle.main.url(forResource: filename, withExtension: ext) else {
            print("Audio file not found in bundle: \(filename).\(ext)")
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.prepareToPlay()
            try? AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try? AVAudioSession.sharedInstance().setActive(true)
        } catch {
            print("Failed to initialize AVAudioPlayer: \(error)")
        }
    }

    func play() {
        guard let player = audioPlayer else { return }
        if !player.isPlaying {
            player.play()
            isPlaying = true
        }
    }

    func pause() {
        guard let player = audioPlayer else { return }
        if player.isPlaying {
            player.pause()
            isPlaying = false
        }
    }

    func stop() {
        if let player = audioPlayer, player.isPlaying {
            player.stop()
        }
        isPlaying = false
        audioPlayer = nil
    }

    func togglePlayPause() {
        if isPlaying {
            pause()
        } else {
            play()
        }
    }
}

struct ButtonView: View {
    // These are now provided by the caller for each song.
    let fileName: String
    let fileExtension: String

    @StateObject private var player = SoundPlayer()

    var body: some View {
        VStack(spacing: 24) {
            Button(action: {
                if !player.hasAudioLoaded {
                    player.load(named: fileName, withExtension: fileExtension)
                }
                player.togglePlayPause()
            }) {
                Image(systemName: player.isPlaying ? "pause.fill" : "play.fill")
                    .font(.system(size: 48, weight: .bold))
                    .foregroundStyle(.white)
                    .padding(24)
                    .background(Circle().fill(player.isPlaying ? Color.green : Color.blue))
                    .shadow(radius: 6)
                    .accessibilityLabel(player.isPlaying ? "Pause" : "Play")
            }

            Text("\(fileName).\(fileExtension)")
                .foregroundStyle(.secondary)
        }
        .padding()
        .onDisappear {
            player.stop()
        }
    }
}

#Preview {
    ButtonView(fileName: "火星人", fileExtension: "mp3")
}

