//
//  FavoriteViewController.swift
//  FilmsApp
//
//  Created by Anton on 30.03.2022.
//

import UIKit

class FavoriteViewController: UIViewController {

    
    @IBOutlet weak var favoriteCollectionView: UICollectionView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
        let xibFavCell = UINib(nibName: "FavoriteFilmCell", bundle: nil)
        favoriteCollectionView?.register(xibFavCell, forCellWithReuseIdentifier: "FavoriteFilmCell")
        favoriteCollectionView?.reloadData()
    }
    

    

}

extension FavoriteViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return showLikedItems().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = favoriteCollectionView?.dequeueReusableCell(withReuseIdentifier: "FavoriteFilmCell", for: indexPath) as? FavoriteFilmCell else {
            return UICollectionViewCell()
        }
        cell.data = likedFilmsArray[indexPath.item]
        
        return cell
    }
    
    
    
}
