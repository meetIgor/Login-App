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
    
    //MARK: - Public Properties
    var userName: String!
    
    //MARK: - Private Properties
    private let startColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
    private let endColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    
    
    //MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        addGradientWithColor(from: startColor, to: endColor)
        welcomLabel.text = "Welcom,\n" + userName
    }
    
    //MARK: - Private Methods
    private func addGradientWithColor(from startColor: UIColor, to endColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [startColor.cgColor, endColor.cgColor]
        view.layer.insertSublayer(gradient, at: 0)
    }
    
}


