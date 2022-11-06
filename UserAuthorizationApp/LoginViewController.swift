//
//  ViewController.swift
//  UserAuthorizationApp
//
//  Created by Илья Морин on 05.11.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var logInButton: UIButton!
    
    @IBOutlet var passwordLabel: UITextField!
    @IBOutlet var userNameLabel: UITextField!
    @IBOutlet var forgotPasswordButton: UIButton!
    @IBOutlet var forgotNameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let hellowVC = segue.destination as? WelcomeViewController else { return }
        hellowVC.userName = userNameLabel.text
        hellowVC.userPassword = passwordLabel.text
        
    }


    @IBAction func logInButtonPressed() {
        if (userNameLabel.text != "Young Developer" || passwordLabel.text != "1234") {
            let alert = UIAlertController (title: "Invalid login or password", message: "Please, enter correct login and password", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okButton)
            present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        let alert = UIAlertController (title: "Oops!", message: "Your password is 1234 😉", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func forgotUserButtonPressed() {
        let alert = UIAlertController (title: "Oops!", message: "Your UserName is Young Developer 😉", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
        
    }
    
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let helloVC = segue.source as? WelcomeViewController else { return }
        userNameLabel.text = helloVC.userName
        passwordLabel.text = helloVC.userPassword
        
    }
    
}

