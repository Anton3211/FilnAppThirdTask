//
//  FavoriteFilmCell.swift
//  FilmsApp
//
//  Created by Anton on 11.05.2022.
//

import UIKit

class FavoriteFilmCell: UICollectionViewCell {
    
    @IBOutlet weak var favoritePosterView: UIImageView!
    
    @IBOutlet weak var favoriteName: UILabel!
    @IBOutlet weak var favoriteYear: UILabel!
    @IBOutlet weak var favoriteRating: UILabel!
    
    var data:Item? {
        didSet {
            guard data != nil else {
                return
            }
            favoritePosterView.image = UIImage(named: data?.testPic ?? "image1")
            favoriteName.text = data?.testTitle
            favoriteYear.text = String(data?.testYear ?? 0)
            favoriteRating.text = String(data?.testRating ?? 0)
        }
    }
    
}
