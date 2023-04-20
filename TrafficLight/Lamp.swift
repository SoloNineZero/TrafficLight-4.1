//
//  Lamp.swift
//  TrafficLight
//
//  Created by Игорь Солодянкин on 20.04.2023.
//

import SwiftUI

struct Lamp: View {
    let color: Color
    let alpha: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 120, height: 120)
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .shadow(color: color, radius: 10)
            .opacity(alpha)
    }
}

struct Lamp_Previews: PreviewProvider {
    static var previews: some View {
        Lamp(color: .green, alpha: 0.2)
    }
}
