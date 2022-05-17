//
//  PosterFullViewController.swift
//  FilmsApp
//
//  Created by Anton on 12.04.2022.
//

import UIKit

class PosterFullViewController: UIViewController {

    
    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var fullPosterImageView: UIImageView!
    
    var receiveDetailIndex:Int = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullPosterImageView.image = UIImage(named: Model().testArray[receiveDetailIndex].testPic ?? "image1")

    }
    
    @IBAction func closeButton(_ sender: UIButton) {
        dismiss(animated: true,completion: nil)
    }
    
    

}
