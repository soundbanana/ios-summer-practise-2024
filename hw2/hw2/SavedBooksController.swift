//
//  SavedBooksController.swift
//  hw2
//
//  Created by Артур Мавликаев on 02.07.2024.
//

import UIKit

class SavedBooksController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    var book:Book?
    var books: [Book] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.reloadData()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        books = BookStorage.shared.books.filter({$0.isFavorite == true})
        collectionView.reloadData()
    }
}

extension SavedBooksController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        books.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SaveCollectionViewCell", for: indexPath) as?  SaveCollectionViewCell else {return UICollectionViewCell()}
        cell.config(book: books[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
    
        
    }
