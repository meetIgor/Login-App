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
    var user: User!
    
    //MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradientWithColor()
        title = user.login
        avatarImageView.image = UIImage(named: user.personInfo.image)
        avatarImageView.layer.cornerRadius = 20
        userNameLabel.text = user.personInfo.name + "\n" + user.personInfo.surname
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userInfoVC = segue.destination as? InfoViewController else { return }
        userInfoVC.user = user
    }

}
