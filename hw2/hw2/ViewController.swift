//
//  ViewController.swift
//  hw2
//
//  Created by Артур Мавликаев on 01.07.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var login: UITextField!
    @IBOutlet weak var password: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func button(_ sender: Any) {
        print("Кнопку нажали")
        let loginText = login.text ?? " "
        let passwordText = password.text ?? " "
        if (loginText == "Dimas" && passwordText == "dopka") || (loginText == "Timur" && passwordText == "dopka2005") {
        } else {
            let alert = UIAlertController(title: "Ошибка", message: "Неверный логин или пароль", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "123" {
                if let tabBarController = segue.destination as? UITabBarController,
                   let viewControllers = tabBarController.viewControllers {
                    for viewController in viewControllers {
                        if let secondVC = viewController as? SecondViewController {
                            let loginText = login.text ?? ""
                            let passwordText = password.text ?? ""
                            secondVC.config(password: passwordText, login: loginText)
                        }
                    }
                }
            }
        }}

