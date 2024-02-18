//
//  ProductsModel.swift
//  Nike-App
//
//  Created by Nicola Kaleta on 17/02/2024.
//

import SwiftUI

struct ProductsModel: Identifiable, Hashable {
    var id: String
    var title: String
    var brand: String
    var description: String
    var images: [String]
    var sizes: [Int]
    var reviews: [ReviewModel]
    var price: Int
    
}

struct ReviewModel : Identifiable, Hashable {
    var id: String
    var userName: String
    var image: String
    var review: String
    var rating: Int
}

// Here we add some sample products

var sampleReview: ReviewModel = .init(id: "abc", userName: "David B.", image: "https://judgeme.imgix.net/comet/1697901035__20231020_162643__original.jpg?auto=format&w=1024", review: "Amazing sneakers with best quality...❤🔥", rating: 5)
