//
//  InfAboutBookViewController.swift
//  hw2
//
//  Created by Артур Мавликаев on 03.07.2024.
//

import UIKit

class InfAboutBookViewController: UIViewController {
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var infLabel: UILabel!
    @IBOutlet weak var imageBook: UIImageView!
    var book: Book!
    @IBOutlet weak var NameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NameLabel.text = book.title
        imageBook.image = book.coverImage.image
        infLabel.text = book.description
        authorLabel.text = book.author
    }
    
    @IBAction func Save(_ sender: Any) {
        // Создаем экземпляр сториборда по его имени
        let storyboard = UIStoryboard(name: "SavedBooks", bundle: nil)
        
        // Создаем экземпляр нового контроллера по его идентификатору
        if let savedBooksViewController = storyboard.instantiateViewController(withIdentifier: "Saved") as? SavedBooksController {
            // Передаем информацию о книге
            savedBooksViewController.book = self.book
            // Показываем новый контроллер модально
            self.present(savedBooksViewController, animated: true, completion: nil)
        
        }
    }



}
