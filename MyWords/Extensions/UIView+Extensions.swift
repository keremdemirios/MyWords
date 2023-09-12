//
//  AddSubViews+Extensions.swift
//  MyWords
//
//  Created by Kerem Demir on 3.09.2023.
//

import Foundation
import UIKit

extension UIView {
    func addSubViews(_ views: UIView...){
        views.forEach({
            addSubview($0)
        })
    }
}


// NOTE : TEK TEK addSubvVew kullanmak yerine toplu bir sekilde kod kalabaligindan kaciniyoruz. Ogren bunu mutlaka.
