//
//  Onboarding.swift
//  Nike-App
//
//  Created by Nicola Kaleta on 14/02/2024.
//

import SwiftUI

struct Onboarding: View {
    
    @State private var isActive = false
    // Now we add some animation properties
    
    @State private var isExpanded = false
    @State private var offset = CGSize.zero
    
    var body: some View {
        if isActive {
            // We move to Login Screen after that
            Sign_in ()
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
                        .scaleEffect(isExpanded ? 20 : 2)
                        .padding(.bottom, -(UIScreen.main.bounds.width / 2))
                }
                .frame(height: .infinity)
                .zIndex(isExpanded ? 2 : 0)
                
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
                .opacity(isExpanded ? 0 : 1)
                .offset(offset)
            }
            // When user swipe up, all layout goes up so for that we add swipe up gesture
            .gesture(DragGesture()
                .onEnded({ value in
                    if value.translation.height < 50 {
                        withAnimation(.easeInOut(duration: 2)) {
                            offset = value.translation
                            isExpanded = true
                        }
                        // Now when swipe we move to the next scene
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                            withAnimation {
                                isActive.toggle()
                            }
                        }
                    }
                }))
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
