//
//  VideoPlayer.swift
//  Radva
//
//  Created by JJ Zapata on 12/3/22.
//

import Foundation
import UIKit
import AVFoundation

extension WelcomeViewController {
    
    func playVideo(completion: @escaping (Bool) -> Void) {
        player = AVPlayer(url: URL(string: "https://firebasestorage.googleapis.com/v0/b/fir-demo-2c741.appspot.com/o/tdf2.mp4?alt=media&token=538fcb77-2df6-4ad2-b7a1-ec03deb3c4e3")!)
        let playerLayer = AVPlayerLayer(player: player!)
        playerLayer.frame = self.view.bounds
        playerLayer.videoGravity = .resizeAspectFill
        self.view.layer.addSublayer(playerLayer)
        NotificationCenter.default.addObserver(self, selector: #selector(finished), name: .AVPlayerItemDidPlayToEndTime, object: player!.currentItem)
        completion(true)
        player!.play()
    }
    
    @objc func finished() {
        player!.seek(to: CMTime.zero)
        player!.play()
    }
    
}
