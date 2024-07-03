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
        updateFavoriteButton()
        NameLabel.text = book.title
        imageBook.image = book.coverImage.image
        infLabel.text = book.description
        authorLabel.text = book.author
    }
    
    @IBOutlet weak var favoriteButton: UIButton!
    func updateFavoriteButton() {
            let buttonTitle = book.isFavorite ? "Удалить из избранного" : "Добавить в избранное"
            favoriteButton.setTitle(buttonTitle, for: .normal)
        }
    @IBAction func Save(_ sender: Any) {
        book.isFavorite.toggle()
        updateFavoriteButton()
    }
}
