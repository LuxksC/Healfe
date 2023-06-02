//
//  StartSplashView.swift
//  Healfe
//
//  Created by Sandra Monteiro de Castro on 12/04/23.
//

import SwiftUI
import DesignSystem
import CommonExtensions

//TODO: - Adicionar uma View Model a essa struct através de injeção de dependências
public struct StartSplashView: View {
    var delegate: StartSplashViewSceneDelegate
    
    public init(delegate: StartSplashViewSceneDelegate) {
        self.delegate = delegate
    }

    @State private var animationPercentage = 0.0
    @State private var blockAnimationCompletion = false

    public var body: some View {
        let animationEnded = animationPercentage == 1.0
        
        ZStack {
            DS.Colors.mainColor.ignoresSafeArea()
            ZStack {
                Image("clock")
                    .resizable()
                    .scaledToFit()
                    .padding(animationEnded ? 8 : 175)
                Image("knife")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 90, alignment: Alignment.bottom)
                    .offset(y: -40)
                    .rotationEffect(.degrees(animationEnded ? 360 : 0))
                Image("fork")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 90, alignment: Alignment.topTrailing)
                    .offset(y: -45)
                    .rotationEffect(.degrees(animationEnded ? 1950 : 150))
            }
            .padding()
        }
        .onAnimationCompleted(for: animationPercentage) {
            if !blockAnimationCompletion {
                delegate.showHome()
                blockAnimationCompletion = true
            }
        }
        .onAppear {
            withAnimation(.timingCurve(0.8, 0, 0.2, 1, duration: 3)) {
                animationPercentage = 1.0
            }
        }
    }
}

