//
//  Database.swift
//  Nike-App
//
//  Created by Nicola Kaleta on 18/02/2024.
//

import SwiftUI
import FirebaseFirestore

// Creating a clase named database which get data from firebase firestore
class Database: ObservableObject {
    
    @Published var productList = [ProductsModel]()
    
    init() {
        getProducts()
    }
    
    func getProducts() {
        let db = Firestore.firestore()
        
        db.collection("PRODUCTS").addSnapshotListener { [weak self] snapshot, error in
            guard let self = self else { return }
            
            if let error = error {
                // Handle the error, such as logging or displaying an alert
                print("Error getting products: \(error.localizedDescription)")
                return
            }
            
            guard let snapshot = snapshot else {
                // Handle the case where the snapshot is nil
                print("Snapshot is nil")
                return
            }
            
            for document in snapshot.documents {
                guard let title = document.get("title") as? String,
                      let brand = document.get("brand") as? String,
                      let description = document.get("description") as? String,
                      let images = document.get("images") as? [String],
                      let sizes = document.get("sizes") as? [Int],
                      let price = document.get("price") as? Int else {
                    // Handle the case where data is missing or not in the expected format
                    print("Error: Missing or incorrect data format for product with ID: \(document.documentID)")
                    continue
                }
                
                // Assuming `sampleReview` is defined somewhere
                self.productList.append(ProductsModel(
                    id: document.documentID,
                    title: title,
                    brand: brand,
                    description: description,
                    images: images,
                    sizes: sizes,
                    reviews: [sampleReview],
                    price: price))
            }
        }
    }
}

