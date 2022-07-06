//
//  InfoViewController.swift
//  Login App
//
//  Created by igor s on 06.07.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var instagramLabel: UILabel!
    @IBOutlet weak var hobbyLabel: UILabel!
    
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
        avatarImageView.image = UIImage(named: image)
        avatarImageView.layer.cornerRadius = 20
        userNameLabel.text = name + "\n" + surname
        ageLabel.text = age.formatted()
        instagramLabel.text = instagram
        hobbyLabel.text = hobbies.map {$0}?.joined(separator: ",\n")
    }
    
    //MARK: - Private Methods
    private func addGradientWithColor(from startColor: UIColor, to endColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [startColor.cgColor, endColor.cgColor]
        view.layer.insertSublayer(gradient, at: 0)
    }
    
}
