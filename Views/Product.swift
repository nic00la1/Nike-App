//
//  Product.swift
//  Nike-App
//
//  Created by Nicola Kaleta on 17/02/2024.
//

import SwiftUI

struct Product: View {
    // Its our productView we show single product here
    var data = sampleProducts[0]
    
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    VStack {
                        ZStack(alignment: .top) {
                            ImagesSlider(images: data.images)
                                .frame(height: 400)
                                .clipShape(RoundedRectangle(cornerRadius: 50))
                                .padding(10)
                        }
                    }
                }
                
                // Bottom Bar
            }
        }
    }
}

#Preview {
    Product()
}
