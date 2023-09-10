//
//  OptionsButton.swift
//  MyWords
//
//  Created by Kerem Demir on 3.09.2023.
//

import UIKit

class OptionsButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String){
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        self.setTitleColor(.systemBackground, for: .normal)
        configure()
    }
    
    private func configure(){
        translatesAutoresizingMaskIntoConstraints = false
        
        
        titleLabel?.textColor = .black
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        
        makeCircular(cornerRadius: 10, borderWidth: 1, borderColor: .label)
    }
}

