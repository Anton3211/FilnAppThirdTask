//
//  Model.swift
//  FilmsApp
//
//  Created by Anton on 11.05.2022.
//

import Foundation

class Item {
    var id: Int?
    var testPic:String?
    var testTitle:String?
    var testYear:Int?
    var testRating:Double?
    var isLiked:Bool
    
    init(id:Int?,testPic:String?, testTitle:String?, testYear:Int?, testRating:Double?,isLiked:Bool){
        self.id = id
    self.testPic = testPic
    self.testTitle = testTitle
    self.testYear = testYear
    self.testRating = testRating
        self.isLiked = isLiked
    }
    
    

    
}

var likedFilmsArray:[Item] = []


func showLikedItems() -> [Item] {
    for i in Model().testArray {
        if i.isLiked == true {
            likedFilmsArray.append(i)
        }
    }
    return likedFilmsArray
}


//Новый массив
var newTestArray: [Item] = []

var sortAscending:Bool = false

func ratingSort()  {
    //1.замыкание для сортировки
    Model().testArray.sort{
        sortAscending ? ($0.testRating ?? 0) < ($1.testRating ?? 0) : ($0.testRating ?? 0) > ($1.testRating ?? 0)
    }
    //2. присваиваем значение
    newTestArray = Model().testArray

}
