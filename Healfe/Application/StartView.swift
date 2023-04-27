//
//  StartView.swift
//  Healfe
//
//  Created by Sandra Monteiro de Castro on 12/04/23.
//

import SwiftUI

struct StartView: View {
    @State private var animateBool = false

    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
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
                    .offset(x: 0, y: -45)
                    .rotationEffect(.degrees(animateBool ? 4470 : 150))
            }
            .padding()
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 3)) {
                animateBool.toggle()
            }
        }
    }
}

struct StartViewPreviews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
