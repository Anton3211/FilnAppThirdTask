//
//  ViewController.swift
//  FilmsApp
//
//  Created by Anton on 30.03.2022.
//

import UIKit

class MainViewController: UIViewController {

   
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    @IBOutlet weak var filmSearchBar: UISearchBar!
    
    @IBOutlet weak var likeBtn: UIButton!
    @IBOutlet weak var sortingButton: UIBarButtonItem!
    
    //MARK: - Заволим экз. класса UISeasrchController()
    
    var searchController = UISearchController()

    
    
    let model = Model()
  //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        newTestArray = model.testArray
        
        mainCollectionView.delegate = self
        mainCollectionView.dataSource = self
        
        
        //Регистрируем XIB ячейку
        let xibCell = UINib(nibName: "FilmCollectionViewCell", bundle: nil)
        mainCollectionView.register(xibCell, forCellWithReuseIdentifier: "FilmCell")
        ratingSort()
        mainCollectionView.reloadData()
        //Создаем наш SearchController
        searchController.searchBar.delegate = self
        searchController.searchBar.placeholder = "Find your film"
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        
        
        
    }
 
    
    //MARK: - Сортировка по нажатию
    @IBAction func sortBtnTapped(_ sender: Any) {
       //константы с изображениями
        let arrowUp = UIImage(named: "arrow.up")
        let arrowDown = UIImage(named: "arrow.down")
        
        //переворачиваем значение sortAscending
        sortAscending = !sortAscending
        
        //прописываем зависимость изображения от значения sortAscending
        sortingButton.image = sortAscending ? arrowUp : arrowDown
        
        ratingSort()
        
        mainCollectionView.reloadData()
        
    }
    
    
  
}
//MARK: - Extension

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource, UISearchBarDelegate {
   
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return newTestArray.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = mainCollectionView.dequeueReusableCell(withReuseIdentifier: "FilmCell", for: indexPath) as? FilmCollectionViewCell else {
            
            return UICollectionViewCell()
        }
     
        
        cell.data = newTestArray[indexPath.item]
        
        
        return cell
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let destViewController = storyboard?.instantiateViewController(withIdentifier: "DetailFilmViewControllerS") as? DetailFilmViewController else {
            
            return
        }
        destViewController.receivedIndex = newTestArray[indexPath.row].id ?? 0
        navigationController?.pushViewController(destViewController, animated: true)
    }
    
    
}
