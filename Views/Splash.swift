//
//  Splash.swift
//  Nike-App
//
//  Created by Nicola Kaleta on 14/02/2024.
//

import SwiftUI

struct Splash: View {
    @State var isActive = false
    
    var body: some View {
        VStack {
            if isActive {
                Onboarding()
            } else  {
                Text("NIKE")
                    .font(.largeTitle.bold())
            }
        }
        .onAppear() {
            // We move to onboarding screen after 2.5 secs
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    isActive = true
                }
            }
        }
    }
}

#Preview {
    Splash()
}
