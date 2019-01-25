//
//  MainViewController.swift
//  ProgrammaticUIPractice
//
//  Created by Ian Bailey on 1/24/19.
//  Copyright © 2019 Ian Bailey. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    
     public var messagetyped = ""
    let mainView = MainView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(mainView)
        mainView.textField.delegate = self
        mainView.delegate = self
    }
    

    

}
extension MainViewController: mainViewDelegate {
    func textMessage(message: String) {
        self.messagetyped = message
    }
    
    
    func segue() {
        let message = DetailViewController.init(message: messagetyped )
        navigationController?.pushViewController(message, animated: true)
    }
}
    
extension MainViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let text = textField.text {
            mainView.delegate?.textMessage(message: text)
            textField.resignFirstResponder()
        }
        return true
    }
}
