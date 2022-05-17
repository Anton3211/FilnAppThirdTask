//
//  JSONModel.swift
//  FilmsApp
//
//  Created by Anton on 30.03.2022.
//

import Foundation

class JSONModel:Codable {
    var original_title:String?
    var poster_path:String?
    var release_date:String?
    var overview:String?
    var vote_average:Double?
    var backdrop_path:String?
    
}

class Model {
    
     var testArray: [Item] = [
        Item(id:0,testPic: "image1", testTitle: "Фильм1", testYear: 2001, testRating: 7.9,isLiked: false),
        Item(id:1,testPic: "image2", testTitle: "Фильм2", testYear: 2011, testRating: 7.1,isLiked: true),
        Item(id:2,testPic: "image3", testTitle: "Фильм3", testYear: 2021, testRating: 6.8,isLiked: true),
        Item(id:3,testPic: "image4", testTitle: "Фильм4", testYear: 2009, testRating: 5.7,isLiked: true),
        Item(id:4,testPic: "image5", testTitle: "Фильм5", testYear: 2002, testRating: 7.1,isLiked: true),
        Item(id:5,testPic: "image6", testTitle: "Фильм6", testYear: 2005, testRating: 3.2,isLiked: false),
        Item(id:6,testPic: "image7", testTitle: "Фильм7", testYear: 2015, testRating: 7.5,isLiked: false),
        Item(id:7,testPic: "image8", testTitle: "Фильм8", testYear: 2043, testRating: 7.1,isLiked: true),
        Item(id:8,testPic: "image9", testTitle: "Фильм9", testYear: 2002, testRating: 2.1,isLiked: false),
        Item(id:9,testPic: "image10", testTitle: "Фильм10", testYear: 2008, testRating: 4.1,isLiked: true),
        Item(id:10,testPic: "image11", testTitle: "Фильм11", testYear: 2003, testRating: 9.1,isLiked: false),
        Item(id:11,testPic: "image12", testTitle: "Фильм12", testYear: 2005, testRating: 2.3,isLiked: false),
        Item(id:12,testPic: "image13", testTitle: "Фильм13", testYear: 2012, testRating: 7.4,isLiked: true),
        Item(id:13,testPic: "image14", testTitle: "Фильм14", testYear: 2016, testRating: 4.5,isLiked: false),
        Item(id:14,testPic: "image15", testTitle: "Фильм15", testYear: 2018, testRating: 7.1,isLiked: true),

    ]

}



