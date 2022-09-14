//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by Berkay Kuzu on 14.09.2022.
//

import Foundation

struct FavoriteModel : Identifiable{  // identifiable yaptığımız her modelin içinde bir tane id olması gerekiyor.
   
    var id = UUID() // Universal Unique id, Swift kendisi bir id atıyor ve ben bu id'yi kullanıyorum.
    var title : String
    var elements : [FavoriteElements]
}

struct FavoriteElements {
    
    var id : String {
        self.name
    }
    var name : String
    var imageName : String
    var description : String
    
}

// Bands

let metallica = FavoriteElements(name: "Metallica", imageName: "metallica", description: "No 1 Music Band")
let megadeth = FavoriteElements(name: "Megadeth", imageName: "megadeth", description: "No 2 Music Band")
let ironMaiden = FavoriteElements(name: "Iron Maiden", imageName: "ironmaiden", description: "No 3 Music Band")

let favoriteBands = FavoriteModel(title: "Favorite Bands", elements: [metallica, megadeth,ironMaiden])
// I created my first title and the elements in it!!!

//Movies

let pulpFiction = FavoriteElements(name: "Pulp Fiction", imageName: "pulpfiction", description: "No 1 Movie")
let theDarkKnight = FavoriteElements(name: "The Dark Knight", imageName: "thedarkknight", description: "No 2 Movie")
let killBill = FavoriteElements(name: "The Kill Bill", imageName: "killbill", description: "No 3 Movie")

let favoriteMovies = FavoriteModel(title: "Favorite Movies", elements: [pulpFiction, theDarkKnight, killBill])
// I created my second title and the elements in it.

let myFavorites = [favoriteBands, favoriteMovies]
