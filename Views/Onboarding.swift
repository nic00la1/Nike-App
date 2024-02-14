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
                }
                .frame(height: .infinity)
                
                VStack(spacing: 15, content: {
                    Spacer()
                    
                    Image("shoes-onboarding")
                        .resizable()
                        .scaledToFit()
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
