//
//  ImagesSlider.swift
//  Nike-App
//
//  Created by Nicola Kaleta on 17/02/2024.
//

import SwiftUI

struct ImagesSlider: View {
    
    var images: [String]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) {img in
                AsyncImage(url: URL(string: img)) { Image in
                    Image.resizable()
                        .scaledToFill()
                } placeholder: {
                    ProgressView()
                }
            }
        }
        .tabViewStyle(PageTabViewStyle())
        
    }
}
