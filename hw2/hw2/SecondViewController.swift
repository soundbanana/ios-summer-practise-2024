//
//  SecondViewController.swift
//  hw2
//
//  Created by Артур Мавликаев on 01.07.2024.
//

import UIKit
class User{
    var name:String
    var number: String
    var mail:String
    var image:UIImage

    init(name: String, number: String, mail: String,image:UIImage) {
        self.name = name
        self.number = number
        self.mail = mail
        self.image = image
    }
}

class SecondViewController: UIViewController {
    let dimas = User(name: "Дима", number: "89174654210", mail: "Dimas@gmail.com",image: UIImage(named: "dimas"))
    let timur = User(name: "Тимур", number: "89874034594", mail: "Timur@gmail.com",image: UIImage(named: "timur"))
    var login:String = ""
    var password:String
    = ""

    @IBAction func Dismiss(_ sender: Any) {
            
            self.navigationController?.popToRootViewController(animated: true)
        }
    @IBOutlet weak var InfAboutGuy: UILabel!
    @IBOutlet weak var Avatar: UIImageView!
    @IBOutlet weak var Mail: UILabel!
    @IBOutlet weak var Number: UILabel!
    @IBOutlet weak var FIO: UILabel!
    override func viewDidLoad() {
        self.navigationItem.hidesBackButton = true
        super.viewDidLoad()
        if login == "Dimas"{
            FIO.text = "Имя \(dimas.name)"
            Number.text = "Номер телефона \(dimas.number)"
            Mail.text = "Почта \(dimas.mail)"
            Avatar.image = dimas.image
            InfAboutGuy.text = "Любит гулять и кушать люля"
        }
        if login == "Timur"{
            FIO.text = "Имя \(timur.name)"
            Number.text = "Номер телефона \(timur.number)"
            Mail.text = "Почта \(timur.mail)"
            Avatar.image = timur.image
            InfAboutGuy.text = "Любить выпить и покурить"
        }
        

    }
    func config(password:String, login:String){
        self.password = password
        self.login = login
    }

    
}
