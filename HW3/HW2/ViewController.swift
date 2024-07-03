//
//  ViewController.swift
//  HW2
//
//  Created by Дмитрий Леонтьев on 01.07.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myLogin: UITextField!
    @IBOutlet weak var myPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func myButtonTap(_ sender: Any) {
        if (myLogin.text == "gig" && myPassword.text == "a") || (myLogin.text == "gigachadetta" && myPassword.text == "b") {
        } else {
            let alert = UIAlertController(title: "error", message: "invalid username or password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "123" {
            if let tabBarController = segue.destination as? UITabBarController,
               let viewControllers = tabBarController.viewControllers {
                for viewController in viewControllers {
                    if let secondVC = viewController as? SecondViewController {
                        let loginText = myLogin.text ?? ""
                        let passwordText = myPassword.text ?? ""
                        secondVC.config(login: loginText, password: passwordText)
                    }
                }
            }
        }
    }
}


