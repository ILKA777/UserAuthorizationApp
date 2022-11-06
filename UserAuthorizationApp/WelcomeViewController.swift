//
//  HelloViewController.swift
//  UserAuthorizationApp
//
//  Created by Илья Морин on 05.11.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var helloLabel: UILabel!
    
    var userName: String?
    var userPassword: String?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLabel.text = "Hello, \(userName ?? "Гений")!"
        userName = ""
        userPassword = ""
        
    }
    
  
    
    

    

}
