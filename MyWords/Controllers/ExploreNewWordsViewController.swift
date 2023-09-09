// TO DO : Anasayfaya renk modlarini ekle.
// TO DO : Ekrna gecislerindeki right bar button itemlar icin direkt gecirme. Once bir alert ver oyle gecmelerine izin ver.
//  ExploreNewWordsViewController.swift
//  MyWords
//
//  Created by Kerem Demir on 8.09.2023.
//

import UIKit

class ExploreNewWordsViewController: UIViewController {
    
    // MARK : UI Elements
    
    // MARK : Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Explore Words"
        configure()
    }
    // MARK : Configure
    private func configure(){
        setupUI()
        // hide back button
        self.navigationItem.setHidesBackButton(true, animated: true)
        // Switch viewcontroller button - right bar button
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person"), style: .done, target: self, action: #selector(rightNavigationButtonTapped))
        // Home button -  left bar button
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "house"), style: .done, target: self, action: #selector(leftNavigationButtonTapped))
    }
    // MARK : Setup UI
    private func setupUI(){
        
    }
    // MARK : Functions
    
    // MARK : Actions
    @objc func rightNavigationButtonTapped() {
        let vc = MyWordsViewController()
        vc.modalPresentationStyle = .fullScreen
        vc.modalTransitionStyle = .flipHorizontal
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func leftNavigationButtonTapped(){
        let vc = ViewController()
        vc.modalPresentationStyle = .fullScreen
//        present(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
    }
}
