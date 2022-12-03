//
//  AboutRadva.swift
//  Radva
//
//  Created by JJ Zapata on 12/3/22.
//

import Foundation
import UIKit

class AboutRadva: UIViewController {
    
    // MARK: - UI Components
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        general()
        style()
        layout()
        
        // Do any additional setup after loading the view.
    }
    
}

extension AboutRadva {
    
    // MARK: - General
    func general() {
        view.backgroundColor = .backgroundColor
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "About Radva"
    }
    
    // MARK: - Styling
    func style() {
        //
    }
    
    
    // MARK: - Layout
    func layout() {
        //
    }
    
    // MARK: - Functions
    
}
