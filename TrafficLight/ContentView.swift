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
    @State private var title = "Start"
    
    let onLight = 1.0
    let offLight = 0.2
    
    @State private var redLight = 0.2
    @State private var yellowLight = 0.2
    @State private var greenLight = 0.2
    
    @State private var currentLight = Light.red
    
    var body: some View {
        VStack {
            VStack {
                Lamp(color: .red, alpha: redLight)
                    .padding(10)
                Lamp(color: .yellow, alpha: yellowLight)
                    .padding(10)
                Lamp(color: .green, alpha: greenLight)
                    .padding(10)
            }
            Spacer()
            SwitchLightButton(title: title, action: getOnColor)
        }
        .padding(30)
    }
    
    private func getOnColor() {
        if title == "Start" {
            title = "Next"
        }
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            redLight = onLight
            yellowLight = offLight
            greenLight = offLight
        case .yellow:
            currentLight = .green
            redLight = offLight
            yellowLight = onLight
            greenLight = offLight
        case .green:
            currentLight = .red
            redLight = offLight
            yellowLight = offLight
            greenLight = onLight
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
