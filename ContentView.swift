//
//  ContentView.swift
//  Nike-App
//
//  Created by Nicola Kaleta on 14/02/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            // Bottom Bar
            Home()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
                .tabItemStyle
                
            Text("Search View")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Explore")
                }
                .tabItemStyle
            
            Text("Cart View")
                .tabItem {
                    Image(systemName: "bag")
                    Text("Cart")
                }
                .tabItemStyle
            
            Text("Profile View")
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tabItemStyle
        }
        .tint(.black)
    }
}

#Preview {
    ContentView()
}

extension View {
    var tabItemStyle: some View {
        self
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarBackground(.ultraThinMaterial, for: .tabBar)
    }
}
