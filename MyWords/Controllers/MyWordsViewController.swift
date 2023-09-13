//
//  MyWordsViewController.swift
//  MyWords
//
//  Created by Kerem Demir on 8.09.2023.
//

import UIKit

class MyWordsViewController: UIViewController {
    // MARK : UI Elements
    var mainWord = ChoicesButton(title: "Apple")
    
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
        // hide back button
        self.navigationItem.setHidesBackButton(true, animated: true)
        // Switch viewcontroller button - right bar button
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "globe")?.withTintColor(.label, renderingMode: .alwaysOriginal), style: .done, target: self, action: #selector(rightNavigationButtonTapped))
        // Home button -  left bar button
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "house")?.withTintColor(.label, renderingMode: .alwaysOriginal), style: .done, target: self, action: #selector(leftNavigationButtonTapped))
        
    }
    // MARK : Setup UI
    private func setupUI(){
        view.addSubViews(mainWord)
        mainWord.addTarget(self, action: #selector(mainWordTapped), for: .touchUpInside)
        NSLayoutConstraint.activate([
            mainWord.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainWord.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50)
        ])
    }
    // MARK : Functions
    
    // MARK : Actions
    @objc func mainWordTapped(){
        print("Working")
    }
    
    @objc func rightNavigationButtonTapped() {
        showAlert(title: "Go to Explore Words", message: "Do you want to go to Explore Words?") {
            let vc = ExploreNewWordsViewController()
            vc.modalPresentationStyle = .fullScreen
            vc.modalTransitionStyle = .flipHorizontal
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @objc func leftNavigationButtonTapped(){
        let vc = ViewController()
        vc.modalPresentationStyle = .fullScreen
        //        present(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
    }
}
