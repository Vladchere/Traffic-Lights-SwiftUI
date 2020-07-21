//
//  ContentView.swift
//  Traffic Lights SwiftUI
//
//  Created by Vladislav on 21.07.2020.
//  Copyright © 2020 Vladislav Cheremisov. All rights reserved.
//

import SwiftUI

enum CurrentLight: Double {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var currentLight = CurrentLight.red
    @State private var redLamp = Lamp(color: .red)
    @State private var yellowLamp = Lamp(color: .yellow)
    @State private var greenLamp = Lamp(color: .green)
    @State private var button = SwitchButton()
    
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            VStack {
                redLamp
                yellowLamp
                greenLamp
                
                Spacer()
                
                Button(action: { self.startButtonPressed() }) {
                    button
                }
            }.padding()
        }
    }
    
    private func startButtonPressed(){
        button.text = "Next"
        
        switch currentLight {
        case .red:
            greenLamp.opacity = 0.2
            redLamp.opacity = 1
            currentLight = CurrentLight.yellow
        case .yellow:
            redLamp.opacity = 0.2
            yellowLamp.opacity = 1
            currentLight = CurrentLight.green
            
        case .green:
            yellowLamp.opacity = 0.2
            greenLamp.opacity = 1
            currentLight = CurrentLight.red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
