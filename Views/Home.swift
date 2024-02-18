//
//  Home.swift
//  Nike-App
//
//  Created by Nicola Kaleta on 17/02/2024.
//

import SwiftUI

struct Home: View {
    @State var currentCategory = "All"
    
    @State var productsList = sampleProducts
    
    @State var product: ProductsModel? = nil
    
    @State var showProduct = false
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20, content: {
                    HStack {
                        Text("**Shoes**\nCollections")
                            .font(.largeTitle)
                        
                        Spacer()
                        
                        Image(systemName: "bell")
                            .padding(.vertical, 25)
                            .padding(.horizontal, 16)
                            .imageScale(.large)
                            .overlay {
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(.black.opacity(0.05), lineWidth: 3)
                            }
                    }
                    // Categories
                    categoriesView
                        .zIndex(1)
                    
                    // Product List
                    productsView
                        .fullScreenCover(isPresented: $showProduct, content: {
                            Product(data: product ?? sampleProducts[0])
                        })
                })
                .padding()
            }
            .scrollIndicators(.hidden)
        }
    }
    
    // MARK - Categories
    var categoriesView: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 15, content: {
                ForEach(sampleBrands, id: \.id) { item in
                    HStack {
                        if !item.icon.isEmpty {
                            Image(item.icon)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 26, height: 26)
                        }
                        
                        if currentCategory == item.title || item.title == "All" {
                            Text(item.title)
                        }
                    }
                    .foregroundStyle( currentCategory == item.title ? .white : .black)
                    .padding()
                    .background( currentCategory == item.title ? .black : .gray.opacity(0.08) )
                    .clipShape(Capsule())
                    .onTapGesture {
                        withAnimation {
                            currentCategory = item.title
                            
                            // Now we want to show shoes of selected brand so we apply filter on the list
                            // For that we use new list
                            
                            if item.title == "All" {
                                productsList = sampleProducts
                            } else {
                                productsList = sampleProducts.filter{ $0.brand == item.title }
                            }
                        }
                       
                    }
                }
            })
        }
        .scrollIndicators(.hidden)
    }
    
    
    // MARK - Products View
    var productsView: some View {
        VStack {
            ForEach(productsList, id: \.id) { item in
                VStack {
                    AsyncImage(url: URL(string: item.images[0])) { img in
                        img.resizable()
                            .scaledToFill()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: UIScreen.main.bounds.width - 40, height: 200)
                    .clipShape(Rectangle())
                    
                    Text(item.title)
                        .font(.headline.bold())
                    
                    Text("$\(item.price)")
                        .font(.callout)
                }
                .padding(.bottom)
                .background(.gray.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .onTapGesture {
                    product = item
                    showProduct = true
                }
            }
        }
        .zIndex(0)
    }
}

#Preview {
    ContentView()
}
