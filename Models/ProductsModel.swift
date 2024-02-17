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

let sampleProducts: [ProductsModel] = [
    .init(id: "1", title: "X Lows ASH", brand: "Nike", description: "Elegant. Mellow. Eternal. Reminiscent of smouldering embers and weathered stones. A muted spectrum that exists between light and shadow. A sophisticated reflection that allures and ages gracefully. ASH strikes a subtle balance between grey and blue contrasts and is a statement of unmatched simplicity.", images: ["https://www.wearcomet.com/cdn/shop/files/Lateral-view-min_27e3e886-f774-43c7-87f9-e48a326a4adb.jpg?v=1698137600&width=1346",
        "https://www.wearcomet.com/cdn/shop/files/front3-4-min.jpg?v=1698137600&width=2200",
        "https://www.wearcomet.com/cdn/shop/files/details-zoom-min.jpg?v=1698137600&width=2200",
        "https://www.wearcomet.com/cdn/shop/files/Back-3-4-view-min_18c04255-c011-48a7-b218-d2125c15faab.jpg?v=1698233934&width=2200"],
        sizes: [40, 41, 42, 43, 44], reviews: [sampleReview, sampleReview], price: 250),
    
        .init(id: "2", title: "X Lows LAGOON", brand: "Adidas", description: "Shades of shallow blues. Pristine rocks resting on a bed of wet sand. Cloudy skies mirrored in the water come together and shine bright in hues of coral and yellow. LAGOON nudges you to begin again, embrace everything with a fresh start, stand out and stand tall.",
            images:
                ["https://www.wearcomet.com/cdn/shop/files/Lateral-View1-min.jpg?v=1698135135&width=1346",
              "https://www.wearcomet.com/cdn/shop/files/Front-3-4-min_16c5fc31-1e49-47b8-b2b0-8f93fe05f0f4.jpg?v=1698135135&width=1346",
              "https://www.wearcomet.com/cdn/shop/files/Front-3-4-min_16c5fc31-1e49-47b8-b2b0-8f93fe05f0f4.jpg?v=1698135135&width=1346",
              "https://www.wearcomet.com/cdn/shop/files/Back-3-4-view-min_44785e17-3216-4380-bcde-e3e070555b43.jpg?v=1698232586&width=1346"],
              sizes: [40, 41, 42, 43, 44], reviews: [sampleReview, sampleReview], price: 280),
    
        .init(id: "3", title: "X Lows FLAMINGO", brand: "Puma", description: "A whimsical fusion of pink and white. FLAMINGO is reminiscent of cotton candy skies and playful summer days. These sneakers have the grace that lets you stand tall and walk every step with elegance, just like the iconic bird they’re named after.",
              images: [
              "https://www.wearcomet.com/cdn/shop/files/Lateral-view--min.jpg?v=1702358875&width=1346",
              "https://www.wearcomet.com/cdn/shop/files/extralookbook-min.jpg?v=1702358875&width=1346",
              "https://www.wearcomet.com/cdn/shop/files/extralacingshot_1_-min.jpg?v=1702361401&width=1346",
              "https://www.wearcomet.com/cdn/shop/files/front-3-4-min_51bc75a2-2e52-4725-8655-13c332598e7f.jpg?v=1702358875&width=1346"
              ],
              sizes: [40, 41, 42, 43, 44], reviews: [sampleReview, sampleReview], price: 220),
    
        .init(id: "4", title: "X Lows ASH", brand: "Nike", description: "Elegant. Mellow. Eternal. Reminiscent of smouldering embers and weathered stones. A muted spectrum that exists between light and shadow. A sophisticated reflection that allures and ages gracefully. ASH strikes a subtle balance between grey and blue contrasts and is a statement of unmatched simplicity.", images: ["https://www.wearcomet.com/cdn/shop/files/Lateral-view-min_27e3e886-f774-43c7-87f9-e48a326a4adb.jpg?v=1698137600&width=1346",
            "https://www.wearcomet.com/cdn/shop/files/front3-4-min.jpg?v=1698137600&width=2200",
            "https://www.wearcomet.com/cdn/shop/files/details-zoom-min.jpg?v=1698137600&width=2200",
            "https://www.wearcomet.com/cdn/shop/files/Back-3-4-view-min_18c04255-c011-48a7-b218-d2125c15faab.jpg?v=1698233934&width=2200"],
            sizes: [40, 41, 42, 43, 44], reviews: [sampleReview, sampleReview], price: 250),
    
        .init(id: "5", title: "X Lows LAGOON", brand: "Adidas", description: "Shades of shallow blues. Pristine rocks resting on a bed of wet sand. Cloudy skies mirrored in the water come together and shine bright in hues of coral and yellow. LAGOON nudges you to begin again, embrace everything with a fresh start, stand out and stand tall.",
            images:
                ["https://www.wearcomet.com/cdn/shop/files/Lateral-View1-min.jpg?v=1698135135&width=1346",
              "https://www.wearcomet.com/cdn/shop/files/Front-3-4-min_16c5fc31-1e49-47b8-b2b0-8f93fe05f0f4.jpg?v=1698135135&width=1346",
              "https://www.wearcomet.com/cdn/shop/files/Front-3-4-min_16c5fc31-1e49-47b8-b2b0-8f93fe05f0f4.jpg?v=1698135135&width=1346",
              "https://www.wearcomet.com/cdn/shop/files/Back-3-4-view-min_44785e17-3216-4380-bcde-e3e070555b43.jpg?v=1698232586&width=1346"],
              sizes: [40, 41, 42, 43, 44], reviews: [sampleReview, sampleReview], price: 280),
    
        .init(id: "6", title: "X Lows FLAMINGO", brand: "Puma", description: "A whimsical fusion of pink and white. FLAMINGO is reminiscent of cotton candy skies and playful summer days. These sneakers have the grace that lets you stand tall and walk every step with elegance, just like the iconic bird they’re named after.",
              images: [
              "https://www.wearcomet.com/cdn/shop/files/Lateral-view--min.jpg?v=1702358875&width=1346",
              "https://www.wearcomet.com/cdn/shop/files/extralookbook-min.jpg?v=1702358875&width=1346",
              "https://www.wearcomet.com/cdn/shop/files/extralacingshot_1_-min.jpg?v=1702361401&width=1346",
              "https://www.wearcomet.com/cdn/shop/files/front-3-4-min_51bc75a2-2e52-4725-8655-13c332598e7f.jpg?v=1702358875&width=1346"
              ],
              sizes: [40, 41, 42, 43, 44], reviews: [sampleReview, sampleReview], price: 220),
    
]

var sampleReview: ReviewModel = .init(id: "abc", userName: "David B.", image: "https://judgeme.imgix.net/comet/1697901035__20231020_162643__original.jpg?auto=format&w=1024", review: "Amazing sneakers with best quality...❤🔥", rating: 5)
