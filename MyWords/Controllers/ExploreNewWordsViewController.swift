// TO DO : MVVM'e uygun hale getir.
// TO DO : Change mode butonuna kendi rengini koyma esnekligi icin bir sey olustur.
// TO DO : My Words kismina gecisteki icon'u daha guzel bir icon ile degistir. Profil izlenimi veriyor kullaniciya.
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
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "person")?.withTintColor(.label, renderingMode: .alwaysOriginal), style: .done, target: self, action: #selector(rightNavigationButtonTapped))
        // Home button -  left bar button
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "house")?.withTintColor(.label, renderingMode: .alwaysOriginal), style: .done, target: self, action: #selector(leftNavigationButtonTapped))
    }
    // MARK : Setup UI
    private func setupUI(){
        
    }
    // MARK : Functions
    
    // MARK : Actions
    @objc func rightNavigationButtonTapped() {
        showAlert(title: "Go to My Words", message: "Do you want to go to My Words?") {
            let vc = MyWordsViewController()
            vc.modalPresentationStyle = .fullScreen
            vc.modalTransitionStyle = .flipHorizontal
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    @objc func leftNavigationButtonTapped(){
        let vc = ViewController()
        vc.modalPresentationStyle = .fullScreen
        navigationController?.pushViewController(vc, animated: true)
    }
}



