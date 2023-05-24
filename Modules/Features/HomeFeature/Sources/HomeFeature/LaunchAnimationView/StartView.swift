//
//  StartView.swift
//  Healfe
//
//  Created by Sandra Monteiro de Castro on 12/04/23.
//

import SwiftUI
import DesignSystem

public struct StartView: View {
    public init() {}
    @State private var animateBool = false

    public var body: some View {
        ZStack {
            DS.Colors.mainColor.ignoresSafeArea()
            ZStack {
                Image("clock")
                    .resizable()
                    .scaledToFit()
                    .padding(animateBool ? 8 : 175)
                Image("knife")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 90, alignment: Alignment.bottom)
                    .offset(y: -40)
                    .rotationEffect(.degrees(animateBool ? 360 : 0))
                Image("fork")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 90, alignment: Alignment.topTrailing)
                    .offset(y: -45)
                    .rotationEffect(.degrees(animateBool ? 1950 : 150))
            }
            .padding()
        }
        .onAppear {            withAnimation(.timingCurve(0.8, 0, 0.2, 1, duration: 3)) {
                animateBool.toggle()
            }
        }
    }
}

public struct StartViewPreviews: PreviewProvider {
    public static var previews: some View {
        StartView()
    }
}
