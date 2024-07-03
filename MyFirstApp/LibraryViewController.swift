//
//  LibraryViewController.swift
//  MyFirstApp
//
//  Created by Тимур Салахиев on 03.07.2024.
//





import UIKit

class Book {
    var coverImage: UIImageView
    var title: String
    var author: String
    var description: String
    var isFavourite: Bool
    
    init(coverImage: UIImageView, title: String, author: String, description: String, isFavourite: Bool = false) {
        self.coverImage = coverImage
        self.title = title
        self.author = author
        self.description = description
        self.isFavourite = isFavourite
    }
}


class LibraryViewController: UIViewController{

    var dataSource: [Book] = [Book(coverImage: UIImageView(image: UIImage(named: "gou")), title: "Горе от ума", author: "А. С. Грибоедов", description: "Самонадеянное знание"), Book(coverImage: UIImageView(image: UIImage(named: "vim")), title: "Война и мир", author: "Л. Н. Толстой", description: "История, любовь"), Book(coverImage: UIImageView(image: UIImage(named: "tt")), title: "Три товарища", author: "Э. М. Ремарк", description: "Дружба, судьбы, Германия"), Book(coverImage: UIImageView(image: UIImage(named: "451")), title: "451 градус по фаренгейту", author: "Р. Д. Брэдбери", description: "Книги, цензура"), Book(coverImage: UIImageView(image: UIImage(named: "mi")), title: "Мартин Иден", author: "Джек Лондон", description: "Самопоиск, одиночество"),Book(coverImage: UIImageView(image: UIImage(named: "npvz")), title: "Над пропастью во ржи", author: "Д. Д. Сэлинджер", description: "Поиск смысла")]
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        
    }
    
    
    
}

extension LibraryViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "BooksTableViewCell") as? BooksTableViewCell else {return UITableViewCell()}
        cell.config(book: dataSource[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedData = dataSource[indexPath.row]  // Получите данные, связанные с выбранной ячейкой
           performSegue(withIdentifier: "goToBookDescription", sender: selectedData)  // Подготовьте и выполните переход

    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToBookDescription" {
            if let destinationVC = segue.destination as? BookPageViewController {
                if let selectedData = sender as? Book {
                    destinationVC.book = selectedData  // Передайте данные в ваш второй view controller
                }
            }
        }
    }

    
    

    
    
}




