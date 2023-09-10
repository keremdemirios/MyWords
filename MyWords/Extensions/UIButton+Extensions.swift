//
//  Button+Extensions.swift
//  MyWords
//
//  Created by Kerem Demir on 11.09.2023.
//

import Foundation
import UIKit

extension UIButton {
    func makeCircular(cornerRadius: CGFloat, borderWidth: CGFloat, borderColor: UIColor) {
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
    }
}

