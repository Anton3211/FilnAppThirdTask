//
//  FilmCollectionViewCell.swift
//  FilmsApp
//
//  Created by Anton on 31.03.2022.
//

import UIKit

 class FilmCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var posterPreviewImageView: UIImageView!
    
    @IBOutlet weak var filmTitleLabel: UILabel!
    
    @IBOutlet weak var releaseYearLabel: UILabel!
    
    @IBOutlet weak var ratingLabel: UILabel!
    
     
     var data:Item? {
         didSet{
             guard data != nil else {
                 return
             }
             posterPreviewImageView.image = UIImage(named: data?.testPic ?? "image1")
             filmTitleLabel.text = data?.testTitle
             releaseYearLabel.text = String(data?.testYear ?? 0)
             ratingLabel.text = String(data?.testRating ?? 0)
         }
     }
  
}

