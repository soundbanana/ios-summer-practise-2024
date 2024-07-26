//
//  LibraryVC.swift
//  HW3
//
//  Created by Дмитрий Леонтьев on 03.07.2024.
//

import UIKit

class Book{
    var pic: UIImage
    var title: String
    var author: String
    
    init(
        image: UIImage,
        title: String,
        author: String
    ) {
        self.pic = image
        self.title = title
        self.author = author
    }
}

class LibraryVC: UIViewController {
    
    var library: [Book] = [
        Book(image: UIImage(named: "война и мир")!, title: "Война и мир", author: "Лев Николаевич Толстой"),
        Book(image: UIImage(named: "три товарища")!, title: "Три товарища", author: "Эрих Мария Ремарк"),
        Book(image: UIImage(named: "гордость и предубеждение")!, title: "Гордость и предубеждение", author: "Джейн Остин"),
        Book(image: UIImage(named: "джейн эйр")!, title: "Джейн Эйр", author: "Шарлотта Бронте"),
        Book(image: UIImage(named: "унесенные ветром")!, title: "Унесенные ветром", author: "Маргарет Митчелл")
    ]

    @IBOutlet weak var myTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTable.dataSource = self
        myTable.delegate = self
    }
}

extension LibraryVC: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        library.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CellLibraryVC") as? CellLibraryVC else { return UITableViewCell() }
        cell.config(book: library[indexPath.row])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        195
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "123" {
            if let indexPath = myTable.indexPathForSelectedRow {
                let selectedBook = library[indexPath.row]
                if let infAboutBookVC = segue.destination as? SecLibraryVC {
                    infAboutBookVC.book = selectedBook
                }
            }
        }
    }
}
