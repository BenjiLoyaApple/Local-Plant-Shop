//
//  ContentView.swift
//  shop
//
//  Created by Benji Loya on 19/10/2022.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
    var rating: Int
}

var productList = [Product(name: "Mini palm", image: "1", price: 54, rating: 4),
                   Product(name: "Red wine", image: "2", price: 89, rating: 5),
                   Product(name: "Sand", image: "3", price: 79, rating: 5),
                   Product(name: "Sea", image: "4", price: 94, rating: 4),
                   Product(name: "Cream", image: "5", price: 99, rating: 5),
                   Product(name: "Beige", image: "6", price: 65, rating: 4),
                   Product(name: "Grey", image: "7", price: 54, rating: 5),
                   Product(name: "Mink", image: "8", price: 83, rating: 4),
                   Product(name: "Mango", image: "9", price: 69, rating: 5),
                   Product(name: "Brazil", image: "10", price: 88, rating: 5)]
