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
        if (myLogin.text == "gigachad" && myPassword.text == "228") || (myLogin.text == "gigachadetta" && myPassword.text == "1337") {
            navigationController?.pushViewController(SecondViewController(), animated: true)
        } else {
            let alert = UIAlertController(title: "error", message: "invalid username or password", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? SecondViewController {
            let loginText = myLogin.text ?? " "
            let passwordText = myPassword.text ?? " "
            destinationVC.config(login: loginText, password: passwordText)

        }
    }
}

