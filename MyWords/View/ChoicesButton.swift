// TO DO : Butonun seklini text'ine gore sekillendir.
//  ChoicesButton.swift
//  MyWords
//
//  Created by Kerem Demir on 13.09.2023.
//

import UIKit

class ChoicesButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(title: String, target:Any?, action:Selector) {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        addTarget(target, action: action, for: .touchUpInside)
        configure()
    }
    
    private func configure(){
        translatesAutoresizingMaskIntoConstraints = false
        
//        titleLabel?.minimumScaleFactor = 0.5;
//        titleLabel?.adjustsFontSizeToFitWidth = true;
        titleLabel?.textColor = .black
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        
        makeCircular(cornerRadius: 10, borderWidth: 1, borderColor: .label)
    }
}
