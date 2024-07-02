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
    let dimas = User(name: "Дима", number: "89174654210", mail: "Dimas@gmail.com",image: UIImage(named: "dima")!)
    let timur = User(name: "Тимур", number: "89874034594", mail: "Timur@gmail.com",image: UIImage(named: "timur")!)
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
    private func updateUserInfo(user: User, infoText: String) {
           FIO.text = "Имя \(user.name)"
           Number.text = "Номер телефона \(user.number)"
           Mail.text = "Почта \(user.mail)"
           Avatar.image = user.image
           InfAboutGuy.text = infoText
       }
    private func checkLogin() {
            if login == "Dimas" {
                updateUserInfo(user: dimas, infoText: "Любит гулять и кушать люля")
            } else if login == "Timur" {
                updateUserInfo(user: timur, infoText: "Любить выпить и покурить")
            }
        }
    override func viewDidLoad() {
        self.navigationItem.hidesBackButton = true
        super.viewDidLoad()
        checkLogin()
    }
    func config(password:String, login:String){
        self.password = password
        self.login = login
    }

    
}
