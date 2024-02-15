//
//  Sign in.swift
//  Nike-App
//
//  Created by Nicola Kaleta on 15/02/2024.
//

import SwiftUI

struct Sign_in: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack (alignment: .leading, spacing: 20, content: {
            Image(systemName: "arrow.left")
                .imageScale(.large)
            
            Text("Sign-in")
                .font(.title)
            
            Text("Enter your email address and password and continue shopping.")
                .font(.callout)
            
            TextField("Email Address", text: $email)
                .padding(.horizontal)
                .frame(height: 60)
                .background(.gray.opacity(0.2))
                .clipShape(Capsule())
                .overlay {
                    Capsule()
                        .stroke(.gray.opacity(0.8), lineWidth: 0.5)
                }
            
            SecureField("Password", text: $password)
                .padding(.horizontal)
                .frame(height: 60)
                .background(.gray.opacity(0.2))
                .clipShape(Capsule())
                .overlay {
                    Capsule()
                        .stroke(.gray.opacity(0.8), lineWidth: 0.5)
                }
            Spacer()
        })
        .padding()
        .preferredColorScheme(.dark)
    }
}

#Preview {
    Sign_in()
}
