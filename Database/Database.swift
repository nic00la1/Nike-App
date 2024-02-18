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
        
        db.collection("PRODUCTS").addSnapshotListener { snapshot, error in
            if let snapshot = snapshot {
                for document in snapshot.documents {
                    self.productList.append(ProductsModel(
                        id: document.documentID,
                        title: document.get("title") as! String,
                        brand: document.get("brand") as! String,
                        description: document.get("description") as! String,
                        images: document.get("images") as! [String],
                        sizes: document.get("sizes") as! [Int],
                        reviews: [sampleReview],
                        price: document.get("price") as! Int))
                }
            }
        }
    }
}

