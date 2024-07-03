//
//  Library.swift
//  hw2
//
//  Created by Артур Мавликаев on 02.07.2024.
//

import UIKit
class Book {
    var coverImage: UIImageView
    var title: String
    var author: String
    var description: String
    var isFavorite: Bool
    init(coverImage: UIImageView, title: String, author: String, description: String, isFavorite: Bool = false) {
        self.coverImage = coverImage
        self.title = title
        self.author = author
        self.description = description
        self.isFavorite = isFavorite  
    }
}
class BookStorage {
    static let shared = BookStorage()
    
    let books: [Book] = [
        Book(
            coverImage: UIImageView(image: UIImage(named: "1984_cover")),
            title: "1984",
            author: "Джордж Оруэлл",
            description: "Классический роман-антиутопия, описывающий тоталитарное общество, где правительство полностью контролирует все аспекты жизни граждан."
        ),
        Book(
            coverImage: UIImageView(image: UIImage(named: "war_and_peace_cover")),
            title: "Война и мир",
            author: "Лев Толстой",
            description: "Эпический роман, охватывающий период войн Наполеона с Россией, а также жизни аристократических семей в России в XIX веке."
        ),
        Book(
            coverImage: UIImageView(image: UIImage(named: "harry_potter_cover")),
            title: "Гарри Поттер и философский камень",
            author: "Джоан Роулинг",
            description: "Первая книга серии о приключениях мальчика-волшебника Гарри Поттера, его друзей и врагов в магической школе Хогвартс."
        ),
        Book(
            coverImage: UIImageView(image: UIImage(named: "master_and_margarita_cover")),
            title: "Мастер и Маргарита",
            author: "Михаил Булгаков",
            description: "Философско-фантастический роман о встрече дьявола и его свиты с советскими гражданами в Москве 1930-х годов."
        ),
        Book(
            coverImage: UIImageView(image: UIImage(named: "crime_and_punishment_cover")),
            title: "Преступление и наказание",
            author: "Фёдор Достоевский",
            description: "Роман о студенте Раскольникове, который совершает убийство и пытается оправдать его с  помощью философских теорий."
        )
    ]
}


class LibraryViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var books:[Book]!
    override func viewDidLoad() {
            super.viewDidLoad()
            tableView.dataSource = self
            tableView.delegate = self
            books = BookStorage.shared.books
        }
    }
    

    

extension LibraryViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "first") as? 
        BookTableViewCell else{return UITableViewCell()}
        cell.config(book: books[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        180
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toinf" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let selectedBook = books[indexPath.row]
                if let infAboutBookVC = segue.destination as? InfAboutBookViewController {
                    infAboutBookVC.book = selectedBook
                }
            }
        }
    }
    }

