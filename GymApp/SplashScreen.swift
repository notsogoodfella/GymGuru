//
//  SplashScreen.swift
//  GymApp
//
//  Created by Sumudu Semasinghe on 11/28/23.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opasity = 0.5
    
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image(systemName: "figure.flexibility")
                        .font(.system(size: 80))
                        .foregroundColor(.mint)
                    Text("Gym Guru")
                        .font(Font.custom("ArialRounded-Bold", size: 26))
                        .foregroundColor(.black.opacity(0.8))
                }
                .scaleEffect(size)
                .opacity(opasity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.size = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                        
                    }
                }
            }
        }
        
    }
}

#Preview {
    SplashScreen()
}
