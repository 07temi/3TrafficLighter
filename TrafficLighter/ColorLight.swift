//
//  ColorLight.swift
//  TrafficLighter
//
//  Created by Артем Черненко on 16.02.2022.
//

import SwiftUI

struct ColorLight: View {
    let color: Color
    var state: Double
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 80, height: 80)
            .opacity(state)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
    }
}

//struct ColorLight_Previews: PreviewProvider {
//    static var previews: some View {
//        ColorLight(color: .red)
//    }
//}
