// TO DO : ŞIKLAR OLUŞTUR 4 ADET
//  ViewController.swift
//  MyWords
//
//  Created by Kerem Demir on 3.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK : UI Elements
    
    let myWordsButton = OptionsButton(backgroundColor: .label, title: "My Words")
    let exploreNewWordsButton = OptionsButton(backgroundColor: .label, title: "Explore New Words")
    
    // MARK : Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "My Words"
        configure()
    }
    // MARK : Configure
    private func configure(){
        setupUI()
        // Words buttons
        myWordsButton.addTarget(self, action: #selector(myWordsTapped), for: .touchUpInside)
        exploreNewWordsButton.addTarget(self, action: #selector(newWordsTapped), for: .touchUpInside)
        // Hide back button
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        // set mode view - right bar button
//        let imageName = UIImage(systemName: "circle.lefthalf.filled")
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "circle.lefthalf.filled")?.withTintColor(.label, renderingMode: .alwaysOriginal), style: .done, target: self, action: #selector(changeMode))
    }
    
    // MARK : Setup UI
    private func setupUI(){
        view.addSubViews(myWordsButton, exploreNewWordsButton)
        NSLayoutConstraint.activate([
            // my words constraints
            myWordsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myWordsButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 250),
            myWordsButton.widthAnchor.constraint(equalToConstant: 200),
            myWordsButton.heightAnchor.constraint(equalToConstant: 40),
            
            // explore words constraints
            exploreNewWordsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            exploreNewWordsButton.topAnchor.constraint(equalTo: myWordsButton.bottomAnchor, constant: 40),
            exploreNewWordsButton.widthAnchor.constraint(equalToConstant: 200),
            exploreNewWordsButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    // MARK : Functions
    
    // MARK : Actions
    @objc func myWordsTapped() {
        print("My words came.")
        let vc = MyWordsViewController()
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func newWordsTapped() {
        print("New words came.")
        let vc = ExploreNewWordsViewController()
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
    }
    
    // change mode - dark and light
    @objc func changeMode() {
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        let interfaceStyle = window?.overrideUserInterfaceStyle == .unspecified ? UIScreen.main.traitCollection.userInterfaceStyle : window?.overrideUserInterfaceStyle
        
        if interfaceStyle != .dark {
            window?.overrideUserInterfaceStyle = .dark
        } else {
            window?.overrideUserInterfaceStyle = .light
        }
    }
}

