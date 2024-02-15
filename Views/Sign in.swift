//
//  Sign in.swift
//  Nike-App
//
//  Created by Nicola Kaleta on 15/02/2024.
//

import SwiftUI

struct Sign_in: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 20, content: {
            Image(systemName: "arrow.left")
                .imageScale(.large)
            
            Text("Sign-in")
                .font(.title)
            
            Text("Enter your email address and password and continue shopping.")
                .font(.callout)
        })
        .preferredColorScheme(.dark)
    }
}

#Preview {
    Sign_in()
}
