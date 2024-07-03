//
//  SecondViewController.swift
//  HW2
//
//  Created by Дмитрий Леонтьев on 02.07.2024.
//

import UIKit
class User{
    var fio:String
    var birthday: String
    var mail:String
    var bonusInf: String
    var image: UIImage

    init(
        fio: String,
        birthday: String,
        mail: String,
        bonusInf: String,
        image: UIImage
    ) {
        self.fio = fio
        self.birthday = birthday
        self.mail = mail
        self.bonusInf = bonusInf
        self.image = image
    }
}

class SecondViewController: UIViewController {
    let gigachad = User(
        fio: "гигачад",
        birthday: "11.11.1111",
        mail: "dopka1@stud.kpfu.ru",
        bonusInf: "мрачный тип. любит паркур",
        image: UIImage(named: "gigachad")!
    )
    let gigachadetta = User(
        fio: "гигачадетта",
        birthday: "22.22.2222",
        mail: "dopka2@stud.kpfu.ru",
        bonusInf: "стоит у плиты",
        image: UIImage(named: "gigachadetta")!
    )

    var login: String = " "
    var password: String = " "

    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var fio: UILabel!
    @IBOutlet weak var birthday: UILabel!
    @IBOutlet weak var mail: UILabel!
    @IBOutlet weak var bonusInf: UILabel!
    
    func newAccount(user: User){
        photo.image = user.image
        fio.text = user.fio
        birthday.text = user.birthday
        mail.text = user.mail
        bonusInf.text = user.bonusInf
    }
    
    override func viewDidLoad() {
        self.navigationItem.hidesBackButton = true
        super.viewDidLoad()
        if login == "gigachad" && password == "a" {newAccount(user: gigachad)}
        if login == "gigachadetta" && password == "b"{newAccount(user: gigachadetta)}
    }
    
    @IBAction func Dismiss(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)

    }
    
    
    func config(login:String, password:String){
        self.password = password
        self.login = login
    }
}
