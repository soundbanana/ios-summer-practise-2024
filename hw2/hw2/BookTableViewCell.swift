//
//  BookTableViewCell.swift
//  hw2
//
//  Created by Артур Мавликаев on 03.07.2024.
//

import UIKit

class BookTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageBook: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        nameLabel.text = nil
        imageBook.image = nil
    }
    func config(book:Book){
        nameLabel.text = book.title
        imageBook.image = book.coverImage.image
    }
}
