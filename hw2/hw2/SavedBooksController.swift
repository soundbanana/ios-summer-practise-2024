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
    var dataSource: [Book] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        if let book = book {
                  dataSource.append(book)
            collectionView.reloadData()
              }
        
    }
}
extension SavedBooksController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        dataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SaveCollectionViewCell", for: indexPath) as?  SaveCollectionViewCell else {return UICollectionViewCell()}
        cell.config(book: dataSource[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height: 200)
    }
    
        
    }
