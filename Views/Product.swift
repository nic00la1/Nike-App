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
                            
                            // Navigation
                            HStack {
                                Image(systemName: "arrow.left")
                                
                                Spacer()
                                
                                Image(systemName: "heart")
                            }
                            .padding(.top, safeArea().top)
                            .padding(.horizontal, 30)
                            .imageScale(.large)
                        }
                        
                        // Main Content

                        Image(data.brand.lowercased())
                            .resizable()
                            .scaledToFit()
                            .frame(width: 75)
                        Text(data.title)
                            .font(.largeTitle.bold())
                        
                        Text("$\(data.price)")
                            .font(.title.bold())
                        
                        VStack(alignment: .leading, content: {
                            Text("Size")
                                .font(.title2.bold())
                        
                            ScrollView(.horizontal) {
                                HStack {
                                    ForEach(data.sizes, id: \.self) { item in
                                    Text("\(item)")
                                            .font(.headline)
                                            .frame(width: 70, height: 70)
                                            .background(.gray.opacity(0.06))
                                            .foregroundStyle(.black)
                                            .clipShape(RoundedRectangle(cornerRadius: 30))
                                    }
                                }
                            }
                            .scrollIndicators(.hidden)
                        })
                        .padding()
                    }
                }
                
                // Bottom Bar
            }
            .ignoresSafeArea()
        }
    }
}

#Preview {
    Product()
}

// For padding for safe area we need the size because different devices have different size of safe area
extension View {
    func safeArea() -> UIEdgeInsets {
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return .zero
        }
        
        guard let safeAera = screen.windows.first?.safeAreaInsets else {
            return .zero
        }
        return safeAera
    }
}
