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
    var user: User!
    
    //MARK: - Life Cycles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradientWithColor()
        welcomLabel.text = "Welcom,\n" + user.personInfo.fullnName
    }
    
    //MARK: - Private Methods
    private func addGradientWithColor(from startColor: UIColor, to endColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [startColor.cgColor, endColor.cgColor]
        view.layer.insertSublayer(gradient, at: 0)
    }
    
}


