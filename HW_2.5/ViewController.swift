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
    
    private var userName = "Victoria"
    private var password = "Vorobeva"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.enablesReturnKeyAutomatically = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "fromHomeVC" else { return }
        let homeVC = segue.destination as! HomeViewController
        homeVC.userName = userNameTextField.text
    }
    
    @IBAction func logInPressed() {
        guard
            userNameTextField.text == userName,
            passwordTextField.text == password
        else  {
            showErrorNotification(title: "Wrong login or password!",
                                  message: "Please enter the correct password",
                                  textField: passwordTextField)
            return
        }
        
        performSegue(withIdentifier: "fromHomeVC", sender: nil)
    }
    
    @IBAction func rememberUserName() {
           showErrorNotification(title: "Do not be sad!",
                                 message: "Your user name is '\(userName)'😎")
       }
       
    @IBAction func remamberPassword() {
           showErrorNotification(title: "Do not be sad!",
                                 message: "Your password is '\(password)'😎")
       }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        passwordTextField.text = nil
    }
    
    private func showErrorNotification(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            textField?.text = nil
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension ViewController: UITextFieldDelegate {
        
        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            super .touchesBegan(touches, with: event)
            view.endEditing(true)
        }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            textField.resignFirstResponder()
            passwordTextField.becomeFirstResponder()
        } else {
            logInPressed()
        }
        return true
    }
}
    



