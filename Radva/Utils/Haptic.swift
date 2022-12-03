//
//  Utils.swift
//  Radva
//
//  Created by JJ Zapata on 12/2/22.
//

import Foundation
import UIKit

class Haptic {
    
    static let shared = Haptic()
    
    func medium() {
        let generator = UIImpactFeedbackGenerator(style: .medium)
        generator.impactOccurred()
    }
    
}

