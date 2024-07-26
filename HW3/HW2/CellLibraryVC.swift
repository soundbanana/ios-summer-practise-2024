//
//  CellLibraryVC.swift
//  HW3
//
//  Created by Дмитрий Леонтьев on 03.07.2024.
//

import UIKit

class CellLibraryVC: UITableViewCell {
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var pic: UIImageView!
    @IBOutlet weak var fav: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        title.text = nil
        author.text = nil
        pic.image = nil
    }
    
    func config(book: Book){
        title.text = book.title
        author.text = book.author
        pic.image = book.pic
    }
}
