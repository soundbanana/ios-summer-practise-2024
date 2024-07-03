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
        if (myLogin.text == "gigachad" && myPassword.text == "a") || (myLogin.text == "gigachadetta" && myPassword.text == "b") {
            navigationController?.pushViewController(SecondViewController(), animated: true)
        } else {
            let error = UIAlertController(title: "error", message: "invalid username or password", preferredStyle: .alert)
            error.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            present(error, animated: true, completion: nil)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? SecondViewController {
            destinationVC.config(login: myLogin.text ?? " ", password: myPassword.text ?? " ")
        }
    }
}

