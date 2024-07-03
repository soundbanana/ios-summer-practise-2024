//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Тимур Салахиев on 02.07.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            if let destinationVC = segue.destination as? ResultViewController {
                destinationVC.username = usernameTF.text ?? ""
            }
        }
    }

    
    @IBAction func logInPressed() {
        let username = usernameTF.text
        let password = passwordTF.text
        if (username == "artur" && password == "artur") || (username == "dima" && password == "dima")  {
            performSegue(withIdentifier: "goToResult", sender: nil)
            } else {
                let alert = UIAlertController(title: "Ошибка", message: "Неверный логин или пароль", preferredStyle: .alert)
                        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                        self.present(alert, animated: true, completion: nil)
            }
    
    }
    
    @IBAction func unwindSegueToFirstVC(segue: UIStoryboardSegue){
        
    }

}
extension ViewController: UITextFieldDelegate{
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == usernameTF{
            passwordTF.becomeFirstResponder()
        }else{
            logInPressed()
        }
        return true
    }
}
