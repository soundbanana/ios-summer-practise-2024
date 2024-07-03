//
//  TabBarVC.swift
//  HW3
//
//  Created by Дмитрий Леонтьев on 03.07.2024.
//

import UIKit

class TabBarVC: UITabBarController {

    override func viewDidLoad() {
        self.navigationItem.hidesBackButton = true
        self.selectedIndex = 1
        super.viewDidLoad()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
