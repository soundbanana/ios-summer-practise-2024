//
//  BooksTableViewCell.swift
//  MyFirstApp
//
//  Created by Тимур Салахиев on 03.07.2024.
//

import UIKit

class BooksTableViewCell: UITableViewCell {
    

    @IBOutlet weak var bookNameLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var inFavouritesLabel: UILabel!
    @IBOutlet weak var bookCoverImage: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        bookNameLabel.text = nil
        authorLabel.text = nil
        inFavouritesLabel.text = nil
        bookCoverImage.image = nil
    }
    
    func config(book: Book){
        bookNameLabel.text = book.title
        authorLabel.text = book.author
        if book.isFavourite{
            inFavouritesLabel.text = "In favourites"
        }else{
            inFavouritesLabel.text = "Not in favourites"
        }
        bookCoverImage.image = book.coverImage.image
    }
    
    
}
