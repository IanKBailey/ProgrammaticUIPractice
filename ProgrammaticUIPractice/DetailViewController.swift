//
//  DetailViewController.swift
//  ProgrammaticUIPractice
//
//  Created by Ian Bailey on 1/24/19.
//  Copyright © 2019 Ian Bailey. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    let detail = DetailView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(detail)
        // Do any additional setup after loading the view.
    }
    
    init(message: String) {
        super.init(nibName: nil, bundle: nil)
        detail.label.text = message
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    

}
