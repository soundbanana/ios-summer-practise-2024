//
//  SaveCollectionViewCell.swift
//  hw2
//
//  Created by Артур Мавликаев on 03.07.2024.
//

import UIKit

class SaveCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var nameBook: UILabel!
    @IBOutlet weak var imageBook: UIImageView!
    override func prepareForReuse() {
        super.prepareForReuse()
        nameBook.text = nil
        imageBook.image = nil
    }
    func config(book:Book){
        nameBook.text = book.title
        imageBook.image = book.coverImage.image
    }
}
