//
//  ViewController.swift
//  MyWords
//
//  Created by Kerem Demir on 3.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK : UI Elements
    
    let options = OptionsButton(backgroundColor: .white, title: "Choose 1")
    
    // MARK : Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configure()
    }
    // MARK : Configure
    private func configure(){
        setupUI()
    }
    
    // MARK : Setup UI
    private func setupUI(){
        view.addSubViews(options)
        NSLayoutConstraint.activate([
            options.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            options.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            options.widthAnchor.constraint(equalToConstant: 150),
            options.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    // MARK : Functions
    
    // MARK : Actions
    
}

