//
//  ShowAlert.swift
//  MyWords
//
//  Created by Kerem Demir on 11.09.2023.
//

import UIKit

extension UIViewController {
    func showAlert(title: String, message: String ,completion: @escaping () -> Void) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
            print("OK tapped.")
            completion()
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: { action in
            print("Cancel dismiss.")
            completion()
        }))
        present(alert, animated: true)
    }

}

