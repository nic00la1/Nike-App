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
    
    @State var selectedSize = 40
    
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
                                            .background( selectedSize == item ? .black : .gray.opacity(0.06))
                                            .foregroundStyle( selectedSize == item ? .white : .black)
                                            .clipShape(RoundedRectangle(cornerRadius: 30))
                                        
                                        // changing onTapGesture selectedSize value's.
                                            .onTapGesture {
                                                selectedSize = item
                                            }
                                    }
                                }
                            }
                            .scrollIndicators(.hidden)
                        })
                        .padding()
                        
                        VStack(alignment: .leading, spacing: 20) {
                            Text("Details")
                                .font(.title2.bold())
                            
                            Text(data.description)
                                .multilineTextAlignment(.leading)
                        }
                        .padding()
                    }
                }
                
                // Bottom Bar
                HStack {
                    // Price
                    VStack(alignment: .leading) {
                        Text("$\(data.price)")
                            .font(.title2.bold())
                    }
                    .frame(width: UIScreen.main.bounds.width / 2.5, height: 60)
                    .background(.gray.opacity(0.06))
                    .clipShape(.rect(cornerRadius: 25))
                    
                    // Add to Cart
                    Button("Add to Card") {
                        
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 60)
                    .background(.black)
                    .clipShape(.rect(cornerRadius: 25))
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                }
                .padding(.horizontal)
                
            }
            .edgesIgnoringSafeArea(.top)
        }
        .scrollIndicators(.hidden)
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
