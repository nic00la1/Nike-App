//
//  Home.swift
//  Nike-App
//
//  Created by Nicola Kaleta on 17/02/2024.
//

import SwiftUI

struct Home: View {
    @State var currentCategory = "All"
    
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
                    
                })
                .padding()
            }
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
                }
            })
        }
        .scrollIndicators(.hidden)
    }
    
}

#Preview {
    ContentView()
}
