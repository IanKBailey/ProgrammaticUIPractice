//
//  MainView.swift
//  ProgrammaticUIPractice
//
//  Created by Ian Bailey on 1/24/19.
//  Copyright © 2019 Ian Bailey. All rights reserved.
//

import UIKit

protocol mainViewDelegate: AnyObject {
    func textMessage(message: String)
    func segue()
}


class MainView: UIView {

    
   
    weak var delegate: mainViewDelegate?
    
    
    lazy var textField: UITextField = {
        let text = UITextField()
        text.backgroundColor = .white
        text.addTarget(self, action: #selector(textfunc), for: .touchUpInside)
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
        delegate?.segue()
    }
    
    @objc func textfunc() {
        
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
