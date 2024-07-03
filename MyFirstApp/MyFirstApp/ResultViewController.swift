//
//  ResultViewController.swift
//  MyFirstApp
//
//  Created by Тимур Салахиев on 02.07.2024.
//

import UIKit

class ResultViewController: UIViewController {
    var username: String?

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthDateLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var imageBox: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if username == "artur"{
            nameLabel.text = "Мавликаев Артур"
            birthDateLabel.text = "07.01.2005"
            bioLabel.text = "Инфоцыган, репетитор..."
            let image = UIImage(named: "artur")
            imageBox.image = image
        }
        if username == "dima"{
            nameLabel.text = "Леонтьев Дмитрий"
            birthDateLabel.text = "01.01.2000"
            bioLabel.text = "Спорторг, молодчина..."
            let image = UIImage(named: "dimas")
            imageBox.image = image
        }
        
    }
    
    
}
