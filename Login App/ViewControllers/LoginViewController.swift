//
//  ViewController.swift
//  Login App
//
//  Created by igor s on 01.07.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    //MARK: - Private Properties
    private let user = User.getUser()
    
    //MARK: - Life Cycles Methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomVC = viewController as? WelcomViewController {
                welcomVC.userName = user.username
            } else if let navController = viewController as? UINavigationController {
                
                guard let userVC = navController.topViewController as? UserViewController else { return }
                userVC.username = user.username
                userVC.image = user.personInfo.image
                userVC.name = user.personInfo.name
                userVC.surname = user.personInfo.surname
                userVC.age = user.personInfo.age
                userVC.instagram = user.personInfo.instagram
                userVC.hobbies = user.personInfo.hobbies.map { $0.rawValue }
                
            }
            
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    //MARK: - IB Actions
    @IBAction func loginButtonTapped() {
        guard userNameTextField.text == user.username, passwordTextField.text == user.password else {
            showAlert(
                with: "Invalid login or password",
                and: "Please, enter correct login and password",
                textfield: passwordTextField
            )
            return
        }
        performSegue(withIdentifier: "showWelcomVC", sender: nil)
    }
    
    @IBAction func remindNameButtonTapped() {
        showAlert(with: "Oops!", and: "Your name is \(user.username) 😉")
    }
    
    @IBAction func remindPasswordButtonTapped() {
        showAlert(with: "Oops!", and: "Your password is \(user.password) 😉")
    }
    
}

//MARK: - View Controller Extensions
extension LoginViewController {
    private func showAlert(with title: String, and message: String, textfield: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textfield?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

