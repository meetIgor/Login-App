//
//  ViewController.swift
//  Login App
//
//  Created by igor s on 01.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet weak var userNameLabel: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
    
    //MARK: - Private Properties
    private let username = "Neo"
    private let password = "matrix"
    
    //MARK: - Life Cycles Methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomVC = segue.destination as? WelcomViewController else { return }
        welcomVC.userName = userNameLabel.text
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameLabel.text = ""
        passwordLabel.text = ""
    }
    
    //MARK: - IB Actions
    @IBAction func loginButtonTapped() {
        if userNameLabel.text != username || passwordLabel.text != password {
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter correct login and password"
            )
        }
    }
    
    @IBAction func remindNameButtonTapped() {
        showAlert(with: "Oops!", and: "Your name is \(username) 😉")
    }
    
    @IBAction func remindPasswordButtonTapped() {
        showAlert(with: "Oops!", and: "Your password is \(password) 😉")
    }
    
}

//MARK: - View Controller Extensions
extension ViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordLabel.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

