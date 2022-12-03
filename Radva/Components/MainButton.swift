//
//  MainButton.swift
//  Radva
//
//  Created by JJ Zapata on 12/2/22.
//

import Foundation
import UIKit

class MainButton: UIButton {
    
    let label = UILabel()
    let iconImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        sharedLayout()
    }
    
    init(named title: String) {
        super.init(frame: .zero)
        
        setTitle(title, for: [])
        setTitleColor(.white, for: [])
        sharedLayout()
        if title == "Connect with " {
            setImage(UIImage(named: "strav"), for: [])
            semanticContentAttribute = .forceRightToLeft
            configuration?.imagePadding = 18
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        sharedLayout()
    }
    
    private func sharedLayout() {
        
        addTarget(self, action: #selector(hapticFeedback), for: .touchUpInside)
        translatesAutoresizingMaskIntoConstraints = false
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        layer.cornerRadius = 8
        backgroundColor = .radvaOrange
        setTitleColor(.white, for: [])
    }
    
}

extension MainButton {
    
    @objc func hapticFeedback() {
        Haptic().medium()
    }
    
}

