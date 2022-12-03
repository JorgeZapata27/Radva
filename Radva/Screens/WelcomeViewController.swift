//
//  ViewController.swift
//  Radva
//
//  Created by JJ Zapata on 12/2/22.
//

import UIKit
import AVFoundation

class WelcomeViewController: UIViewController {
    
    // MARK: - UI Components
    let overlay = UIView()
    let imageView = UIImageView()
    let titleLabel = UILabel()
    let descButton = UIButton(type: .system)
    let connectButton = MainButton(named: "Connect with ")
    
    // MARK: - Variables
    var player: AVPlayer?
    
    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        playVideo { success in
            if success {
                self.general()
                self.style()
                self.layout()
            }
        }
    }
    
}

extension WelcomeViewController {
    
    // MARK: - General
    func general() {
        view.backgroundColor = .black
    }
    
    // MARK: - Styling
    func style() {
        // Overlay
        overlay.translatesAutoresizingMaskIntoConstraints = false
        overlay.backgroundColor = .black
        overlay.alpha = 0.5
        
        // Image View
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "icon")
        
        // Title Label
        let string = NSMutableAttributedString(string: "Analyze your ride data like a", attributes: [.foregroundColor: UIColor.white, .font: UIFont.boldSystemFont(ofSize: 18)])
        string.append(NSAttributedString(string: " \n", attributes: [.font: UIFont.systemFont(ofSize: 5)]))
        string.append(NSAttributedString(string: "PRO", attributes: [.foregroundColor: UIColor.white, .font: UIFont.systemFont(ofSize: 25)]))
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.numberOfLines = 3
        titleLabel.attributedText = string
        titleLabel.textAlignment = .center
        
        // Desc Button
        let descString = NSMutableAttributedString(string: "What is Radva?", attributes: [.font: UIFont.systemFont(ofSize: 16), .foregroundColor: UIColor.white])
        descString.addAttribute(NSAttributedString.Key.underlineStyle, value: 1, range: NSRange.init(location: 0, length: descString.length))
        descButton.translatesAutoresizingMaskIntoConstraints = false
        descButton.setAttributedTitle(descString, for: [])
        descButton.addTarget(self, action: #selector(whatIsPressed), for: .touchUpInside)
        
        // Connect Button
        connectButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    // MARK: - Layout
    func layout() {
        // Overlay
        view.addSubview(overlay)
        NSLayoutConstraint.activate([
            overlay.topAnchor.constraint(equalTo: view.topAnchor),
            overlay.leftAnchor.constraint(equalTo: view.leftAnchor),
            overlay.rightAnchor.constraint(equalTo: view.rightAnchor),
            overlay.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        // Image View
        view.addSubview(imageView)
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 65),
            imageView.widthAnchor.constraint(equalToConstant: 100),
            imageView.heightAnchor.constraint(equalToConstant: 100),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        // Title Label
        view.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 19),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 60),
            titleLabel.widthAnchor.constraint(equalToConstant: 300)
        ])
        
        // Desc Button
        view.addSubview(descButton)
        NSLayoutConstraint.activate([
            descButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -59),
            descButton.rightAnchor.constraint(equalTo: view.rightAnchor),
            descButton.leftAnchor.constraint(equalTo: view.leftAnchor),
            descButton.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        // Connect Button
        view.addSubview(connectButton)
        NSLayoutConstraint.activate([
            connectButton.bottomAnchor.constraint(equalTo: descButton.topAnchor, constant: -14),
            connectButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            connectButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            connectButton.heightAnchor.constraint(equalToConstant: 54)
        ])
    }
    
    // MARK: - Functions
    
    @objc func whatIsPressed() {
        present(UINavigationController(rootViewController: AboutRadva()), animated: true)
    }
    
}
