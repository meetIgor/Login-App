//
//  TabBarController.swift
//  Login App
//
//  Created by igor s on 10.07.2022.
//

import UIKit
//делаем TabBar  непрозрачным
class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UITabBarAppearance()
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
    }

}
