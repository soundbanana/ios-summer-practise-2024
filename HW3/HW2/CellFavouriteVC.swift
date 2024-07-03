//
//  CellFavouriteVC.swift
//  HW3
//
//  Created by Дмитрий Леонтьев on 03.07.2024.
//

import UIKit

class CellFavouriteVC: UICollectionViewCell {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var author: UILabel!
    
        override func prepareForReuse() {
        super.prepareForReuse()
        name.text = nil
        author.text = nil
        image.image = nil
    }
    
    func config(book: Book){
        name.text = book.title
        author.text = book.author
        image.image = book.pic
    }
    
    
}
