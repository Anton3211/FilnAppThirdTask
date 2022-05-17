//
//  DetailFilmViewController.swift
//  FilmsApp
//
//  Created by Anton on 30.03.2022.
//

import UIKit

class DetailFilmViewController: UIViewController, UIViewControllerTransitioningDelegate {
    
    var transition:RoundingTransition = RoundingTransition()
    
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var filmTitleLabel: UILabel!
    @IBOutlet weak var releaseYearLabel: UILabel!
    
    @IBOutlet weak var ratingLabel: UILabel!
    
    @IBOutlet weak var galleryCollection: UICollectionView!
    
    @IBOutlet weak var descriptionTextView: UITextView!
    
    var receivedIndex:Int = Int()
    
    //Инициализируем булевую проперти
    var cameFromFav:Bool = Bool()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if cameFromFav{
            posterImageView.image = UIImage(named:showLikedItems()[receivedIndex].testPic ?? "image1")
        filmTitleLabel.text = showLikedItems()[receivedIndex].testTitle
        releaseYearLabel.text = String(showLikedItems()[receivedIndex].testYear ?? 0)
        ratingLabel.text = String(showLikedItems()[receivedIndex].testRating ?? 0)
        } else {
            posterImageView.image = UIImage(named:showLikedItems()[receivedIndex].testPic ?? "image1")
        filmTitleLabel.text = showLikedItems()[receivedIndex].testTitle
        releaseYearLabel.text = String(showLikedItems()[receivedIndex].testYear ?? 0)
        ratingLabel.text = String(showLikedItems()[receivedIndex].testRating ?? 0)
        }
        
        
        
    }
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionProfile = .show
        transition.start = posterImageView.center
        transition.roundColor = UIColor.lightGray
        
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionProfile = .cancel
        transition.start = posterImageView.center
        transition.roundColor = UIColor.lightGray
        
        return transition
        }
    
    @IBAction func tapGestureAction(_ sender: UITapGestureRecognizer) {
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destVC = segue.destination as? PosterFullViewController else {
            return
        }
        destVC.receiveDetailIndex = receivedIndex
        
        destVC.transitioningDelegate = self
        destVC.modalPresentationStyle = .custom
    }
   

}
