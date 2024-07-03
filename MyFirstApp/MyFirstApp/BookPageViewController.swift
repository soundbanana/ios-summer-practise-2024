//
//  BookPageViewController.swift
//  MyFirstApp
//
//  Created by Тимур Салахиев on 03.07.2024.
//


import UIKit

var favouriteBooks: [Book]?

class BookPageViewController: UIViewController {

    
    var book: Book?
    
    


    @IBOutlet weak var bookCoverImage: UIImageView!
    @IBOutlet weak var bookNameLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var inFavouritesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bookCoverImage.image = book?.coverImage.image
        bookNameLabel.text = book?.title
        authorLabel.text = book?.author
        descriptionLabel.text = book?.description
        if ((book?.isFavourite) == true){
            inFavouritesLabel.text = "In favourites"
        }else{
            inFavouritesLabel.text = "Not in favourites"
        }

    }
    


    
    @IBAction func addToFavouritesPressed() {
        
        if ((book?.isFavourite) == true){
            let alert = UIAlertController(title: "Error", message: "The book " + book!.title+" has already been added to favourites", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                    self.present(alert, animated: true, completion: nil)
        }else{
            favouriteBooks?.append(book!)
            book?.isFavourite = true
            print(favouriteBooks?[0])
        }
    }
}
