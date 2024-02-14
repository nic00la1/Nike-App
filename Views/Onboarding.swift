//
//  Onboarding.swift
//  Nike-App
//
//  Created by Nicola Kaleta on 14/02/2024.
//

import SwiftUI

struct Onboarding: View {
    
    @State private var isActive = false
    
    var body: some View {
        if isActive {
            // We move to Login Screen after that
        } else {
            // Design of This View
            ZStack(alignment: .top) {
                VStack {
                    Spacer()
                    // Add a red circle in bottom that show animation
                    Circle()
                        .fill(
                            RadialGradient(colors:[ .red, .clear, .clear, .clear], center: .center, startRadius: 0, endRadius: UIScreen.main.bounds.width)
                        )
                        .padding(.bottom, -(UIScreen.main.bounds.width / 2))
                }
                .frame(height: .infinity)
                
                VStack(spacing: 15, content: {
                    Spacer()
                    
                    Image("shoes-onboarding")
                        .resizable()
                        .scaledToFit()
                    
                    Text("Start Journey\nwith NIKE")
                        .font(.largeTitle.bold())
                        .multilineTextAlignment(.center)
                    
                    Text("Smart gorgeous and fashionable collection makes you cool")
                        .multilineTextAlignment(.center)
                        .opacity(0.6)
                    
                    Spacer()
                    
                    VStack {
                        Image(systemName: "chevron.up")
                        Text("Get started")
                            .padding(.top)
                    }
                    .fontWeight(.medium)
                })
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Image("onboarding_back")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
            )
            .preferredColorScheme(.dark)
        }
    }
}

#Preview {
    Onboarding()
}
