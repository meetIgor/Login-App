//
//  WellcomViewController.swift
//  Login App
//
//  Created by igor s on 01.07.2022.
//

import UIKit

class WelcomViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet weak var welcomLabel: UILabel!
    @IBOutlet weak var welcomStickerLabel: UILabel!
    
    //MARK: - Public Properties
    var userName: String!
    
    //MARK: - Private Properties
    let startColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
    let endColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
    
    //MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        addGradientWithColor(from: startColor, to: endColor)
        welcomLabel.text = "Welcom, " + userName
        welcomStickerLabel.text = "👋"
    }
    
    //MARK: - IB Actions
    @IBAction func logoutButtonTapped() {
        dismiss(animated: true)
    }
    
    //MARK: - Private Methods
    private func addGradientWithColor(from startColor: UIColor, to endColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = self.view.bounds
        gradient.colors = [startColor.cgColor, endColor.cgColor]
        self.view.layer.insertSublayer(gradient, at: 0)
    }
    
}


