//
//  Extension + UIView.swift
//  Login App
//
//  Created by igor s on 10.07.2022.
//

import UIKit
//MARK: - Set Background Color
extension UIView {
    func addGradientWithColor() {
        
        let startColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        let endColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [startColor.cgColor, endColor.cgColor]
        layer.insertSublayer(gradient, at: 0)
    }
}
