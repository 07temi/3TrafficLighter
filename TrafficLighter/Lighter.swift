//
//  Lighter.swift
//  TrafficLighter
//
//  Created by Артем Черненко on 16.02.2022.
//

import SwiftUI

struct Lighter: View {
    @State private var redState = 0.3
    @State private var yellowState = 0.3
    @State private var greenState = 0.3
    @State private var buttonTitle = "START"
    private enum CurrentLight {
        case red, yellow, green
    }
    @State private var currentLight = CurrentLight.red
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack{
                ColorLight(color: .red, state: redState)
                ColorLight(color: .yellow, state: yellowState)
                ColorLight(color: .green, state: greenState)
                Spacer()
                Button(buttonTitle) {
                    buttonTitle = "NEXT"
                    switch currentLight {
                    case .red:
                        greenState = 0.3
                        redState = 1
                        currentLight = .yellow
                    case .yellow:
                        redState = 0.3
                        yellowState = 1
                        currentLight = .green
                    case .green:
                        yellowState = 0.3
                        greenState = 1
                        currentLight = .red
                    }
                }
                .frame(width: 150, height: 50)
                .foregroundColor(Color.white)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 2)
                        .background(Color.blue.cornerRadius(20)))
                .padding(.bottom)
            }
        }
    }
}

//struct Lighter_Previews: PreviewProvider {
//    static var previews: some View {
//        Lighter()
//.previewInterfaceOrientation(.portrait)
//    }
//}
