//
//  MainViewController.swift
//  ProgrammaticUIPractice
//
//  Created by Ian Bailey on 1/24/19.
//  Copyright © 2019 Ian Bailey. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    let mainView = MainView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(mainView)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

