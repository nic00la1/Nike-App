//
//  Sign Up.swift
//  Nike-App
//
//  Created by Nicola Kaleta on 15/02/2024.
//

import SwiftUI

struct Sign_Up: View {
    @State private var username: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack (alignment: .leading, spacing: 40, content: {
                Image(systemName: "arrow.left")
                    .imageScale(.large)
                
                VStack(alignment: .leading, spacing: 15, content: {
                    Text("Sign-up")
                        .font(.title)
                    
                    Text("Enter your email address and password and continue shopping.")
                        .font(.callout)
                })
                
                
                
                VStack(spacing: 15, content: {
                    TextField("User name", text: $username)
                        .padding(.horizontal)
                        .frame(height: 60)
                        .background(.gray.opacity(0.2))
                        .clipShape(Capsule())
                        .overlay {
                            Capsule()
                                .stroke(.gray.opacity(0.8), lineWidth: 0.5)
                        }
                    
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
                })
                
                Spacer()
                
                // Login button
                VStack(spacing: 15, content: {
                    Button {
                        
                    } label: {
                        Text("Continue")
                            .fontWeight(.semibold)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 60)
                    .background(.red)
                    .clipShape(Capsule())
                    .foregroundStyle(.white)
                    
                    NavigationLink {
                        Sign_in()
                    } label: {
                        Text("Already have an account? **Sign-in**")
                            .frame(maxWidth: .infinity)
                    }
                    .foregroundStyle(.white)
                })
                
            })
            .padding()
        .preferredColorScheme(.dark)
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    Sign_Up()
}
