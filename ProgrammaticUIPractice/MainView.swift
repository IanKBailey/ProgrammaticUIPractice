//
//  MainView.swift
//  ProgrammaticUIPractice
//
//  Created by Ian Bailey on 1/24/19.
//  Copyright © 2019 Ian Bailey. All rights reserved.
//

import UIKit

protocol mainViewDelegate: AnyObject {
    func segue()
}


class MainView: UIView {

    
    lazy var textField: UITextField = {
        let text = UITextField()
        text.backgroundColor = .white
        return text
    }()
    
    
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("Submit", for: .normal)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(segue), for: .touchUpInside)
    
        return button
    }()
    
    
    
    
    @objc func segue() {
        delegate?.segue
    }
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(button)
        addSubview(textField)
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        textField.bottomAnchor.constraint(equalTo: button.topAnchor).isActive = true
    }
    
    
    
}
