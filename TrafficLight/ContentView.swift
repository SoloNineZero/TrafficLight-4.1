//
//  ContentView.swift
//  TrafficLight
//
//  Created by Игорь Солодянкин on 20.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Lamp(color: .red)
                Lamp(color: .yellow)
                    .padding(20)
                Lamp(color: .green)
                    .padding(20)
            }
            Spacer()
            SwitchLightButton()
        }
        .padding(30)
    }
    
    private func switchColorAction() {
//        Text("Next")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
