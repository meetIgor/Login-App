//
//  InfoViewController.swift
//  Login App
//
//  Created by igor s on 06.07.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet weak var avatarImageView: UIImageView! {
        didSet {
            avatarImageView.layer.cornerRadius = avatarImageView.frame.height / 2
        }
    }
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var instagramLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    
    //MARK: - Public Properties
    var user: User!
    
    //MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradientWithColor()
        avatarImageView.image = UIImage(named: user.personInfo.image)
        userNameLabel.text = user.personInfo.name + "\n" + user.personInfo.surname
        ageLabel.text = user.personInfo.age.formatted()
        instagramLabel.text = user.personInfo.instagram
        hobbyLabel.text = user.personInfo.hobbies.map { $0.rawValue }.joined(separator: ",\n")
    }
    
}
