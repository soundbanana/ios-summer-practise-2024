//
//  FavouriteVC.swift
//  HW3
//
//  Created by Дмитрий Леонтьев on 03.07.2024.
//

import UIKit

class FavouriteVC: UIViewController { //SecLibraryVCDelegate {
    var book: Book?
    
    @IBOutlet weak var collectionView: UICollectionView!
    var library: [Book] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
    }
//    func didAddToFavorites(book: Book) {
//        library.append(book)
//        collectionView.reloadData()
//    }
//    func navigateToSecLibraryVC() {
//        performSegue(withIdentifier: "showSecLibraryVC", sender: nil)
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "showSecLibraryVC" {
//            if let secLibraryVC = segue.destination as? SecLibraryVC {
//                secLibraryVC.delegate = self
//                secLibraryVC.book = self.book
//            }
//        }
//    }
}

extension FavouriteVC: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        library.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellFavouriteVC", for: indexPath) as? CellFavouriteVC else { return  UICollectionViewCell() }
        cell.config(book: library[indexPath.row])
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 190, height: 170)
    }
}
