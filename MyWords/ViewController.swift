//
//  ViewController.swift
//  MyWords
//
//  Created by Kerem Demir on 3.09.2023.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK : UI Elements
    
    let myWordsButton = OptionsButton(backgroundColor: .white, title: "My Words")
    let exploreNewWordsButton = OptionsButton(backgroundColor: .white, title: "Explore New Words")
    
    // MARK : Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configure()
    }
    // MARK : Configure
    private func configure(){
        setupUI()
        
        myWordsButton.addTarget(self, action: #selector(myWordsTapped), for: .touchUpInside)
        exploreNewWordsButton.addTarget(self, action: #selector(newWordsTapped), for: .touchUpInside)
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
//        vc.modalTransitionStyle = .flipHorizontal // bunu myWords ve newWords arasi gecisinde kullan.
//        present(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func newWordsTapped() {
        print("New words came.")
        let vc = ExploreNewWordsViewController()
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
    }
}

