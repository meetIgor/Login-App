//
//  UserViewController.swift
//  Login App
//
//  Created by igor s on 05.07.2022.
//

import UIKit

class UserViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    
    //MARK: - Public Properties
    var image: String!
    var username: String!
    var name: String!
    var surname: String!
    var age: Int!
    var instagram: String!
    var hobbies: [String]!
    
    //MARK: - Private Properties
    private let startColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
    private let endColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    
    //MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        addGradientWithColor(from: startColor, to: endColor)
        title = username
        avatarImageView.image = UIImage(named: image)
        avatarImageView.layer.cornerRadius = 20
        userNameLabel.text = name + "\n" + surname
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userInfoVC = segue.destination as? InfoViewController else { return }
        userInfoVC.image = image
        userInfoVC.username = username
        userInfoVC.name = name
        userInfoVC.surname = surname
        userInfoVC.age = age
        userInfoVC.instagram = instagram
        userInfoVC.hobbies = hobbies
    }
    
    //MARK: - Private Methods
    private func addGradientWithColor(from startColor: UIColor, to endColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [startColor.cgColor, endColor.cgColor]
        view.layer.insertSublayer(gradient, at: 0)
    }

}
