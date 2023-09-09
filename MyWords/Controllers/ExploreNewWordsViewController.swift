// TO DO : Change mode butonuna kendi rengini koyma esnekligi icin bir sey olustur.
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
    
    // MARK : Alerts section
    func showAlert(completion: @escaping () -> Void) {
        let alert = UIAlertController(title: "Go to My Words", message: "Do you want to go to My Words? ", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            print("OK tapped.")
            completion()
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { action in
            print("Cancel dismiss.")
        }))
        present(alert, animated: true)
    }
    
    // MARK : Actions
    @objc func rightNavigationButtonTapped() {
        showAlert {
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



