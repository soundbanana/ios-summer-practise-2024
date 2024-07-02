//
//  SecondViewController.swift
//  HW2
//
//  Created by Дмитрий Леонтьев on 02.07.2024.
//

import UIKit
class User{
    var name:String
    var birthday: String
    var mail:String
    var bonusInf: String

    init(
        name: String,
        birthday: String,
        mail: String,
        bonusInf: String
    ) {
        self.name = name
        self.birthday = birthday
        self.mail = mail
        self.bonusInf = bonusInf
    }
}

class SecondViewController: UIViewController {
    let gigachad = User(
        name: "гигачад",
        birthday: "11.11.1111",
        mail: "dopka@stud.kpfu.ru",
        bonusInf: "мрачный тип. любит паркур"
    )
    let gigachadetta = User(
        name: "гигачадетта",
        birthday: "22.22.2222",
        mail: "dopka@stud.kpfu.ru",
        bonusInf: "стоит у плиты"
    )

    var login: String = " "
    var password: String = " "

    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var fio: UILabel!
    @IBOutlet weak var birthday: UILabel!
    @IBOutlet weak var mail: UILabel!
    @IBOutlet weak var bonusInf: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if login == "gigachad" && password == "228" {
            photo.image = UIImage(named: "gigachad")
            fio.text = gigachad.name
            birthday.text = gigachad.birthday
            mail.text = gigachad.mail
            bonusInf.text = gigachad.bonusInf
            
        }
        if login == "gigachadetta" && password == "1337"{
            photo.image = UIImage(named: "gigachadetta")
            fio.text = gigachadetta.name
            birthday.text = gigachadetta.birthday
            mail.text = gigachadetta.mail
            bonusInf.text = gigachadetta.bonusInf
        }


    }
    @IBAction func exit(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        ViewController().viewWillAppear(true)
    }
    func config(login:String, password:String){
        self.password = password
        self.login = login
    }
}
