//
//  DetailView.swift
//  ProgrammaticUIPractice
//
//  Created by Ian Bailey on 1/24/19.
//  Copyright © 2019 Ian Bailey. All rights reserved.
//

import UIKit

class DetailView: UIView {

    lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.backgroundColor = .blue
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(label)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 11).isActive = true
        label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11).isActive = true
        label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
    }
    
    
}

