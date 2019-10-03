//
//  ViewController.swift
//  HW_2.5
//
//  Created by Виктория Воробьева on 02/10/2019.
//  Copyright © 2019 Виктория Воробьева. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var logInButton: UIButton!
    
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
//        let _ = segue.source as! HomeViewController
    }

    @IBAction func signUpAction(_ sender: Any) {
        let userName = userNameTextField.text
        let password = passwordTextField.text
        
        if userName == "Victoria" && password == "Vorobeva" {
            performSegue(withIdentifier: "fromHomeVC", sender: nil)
        } else {
            showErrorNotification(title: "Wrong password!", message: "Please enter the correct password")
            passwordTextField.text = nil
        }
    }
    
     private func showErrorNotification(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    @IBAction func rememberUserName() {
        showErrorNotification(title: "Do not be sad!", message: "Your user name is 'Victoria'😎")
    }
    
    @IBAction func remamberPassword() {
        showErrorNotification(title: "Do not be sad!", message: "Your password is 'Vorobeva'😎")
    }
    
}

//Отправляю в большей степени домашку, чтобы понять что не так я делаю и почему у меня все-таки не видит код и открывается другой VC, даже если пароль не правильный. На это убила почти все время.((

