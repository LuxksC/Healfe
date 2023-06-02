//
//  HomeTabView.swift
//  
//
//  Created by Lucas de Castro Souza on 01/06/23.
//
//  Tutorial about how to create a TabView in SwiftUI:
//  https://www.hackingwithswift.com/quick-start/swiftui/adding-tabview-and-tabitem
//

import SwiftUI

public struct HomeTabView: View {
    
    public init() {
        UITabBar.appearance().backgroundColor = .white
    }

    public var body: some View {
        TabView {
            WaterMainView()
                .tabItem {
                    Label("Água", systemImage: "drop.circle")
                }

            ProfileMainView()
                .tabItem{
                    Label("Perfil", systemImage: "person.crop.circle")
                }
        }
    }
}

public struct HomeTabViewPreviews: PreviewProvider {
    public static var previews: some View {
        HomeTabView()
    }
}
