//
//  ContentView.swift
//  TrafficLight
//
//  Created by Игорь Солодянкин on 20.04.2023.
//

import SwiftUI

enum Light {
    case red, yellow, green
}

struct ContentView: View {
    @State private var redLight = 0.2
    @State private var yellowLight = 0.2
    @State private var greenLight = 0.2
    
    @State private var currentLight = Light.red
    
    var body: some View {
        VStack {
            VStack {
                Lamp(color: .red, alpha: redLight)
                Lamp(color: .yellow, alpha: yellowLight)
                    .padding(20)
                Lamp(color: .green, alpha: greenLight)
                    .padding(20)
            }
            Spacer()
            SwitchLightButton(title: "Start", action: getOnColor)
        }
        .padding(50)
    }
    private func getOnColor() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
