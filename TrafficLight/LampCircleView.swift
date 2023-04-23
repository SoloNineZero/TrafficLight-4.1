//
//  Lamp.swift
//  TrafficLight
//
//  Created by Игорь Солодянкин on 20.04.2023.
//

import SwiftUI

struct LampCircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 120)
            .foregroundColor(color)
            .shadow(color: color, radius: 10)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
    }
}

struct Lamp_Previews: PreviewProvider {
    static var previews: some View {
        LampCircleView(color: .red, opacity: 1)
    }
}
