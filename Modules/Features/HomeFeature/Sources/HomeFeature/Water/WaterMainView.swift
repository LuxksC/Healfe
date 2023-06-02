//
//  WaterMainView.swift
//  
//
//  Created by Lucas de Castro Souza on 01/06/23.
//

import SwiftUI
import DesignSystem

public struct WaterMainView: View {
    
    public init() {}

    public var body: some View {
        ZStack {
            DS.Colors.waterColor.ignoresSafeArea()
        }
    }
}
