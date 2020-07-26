//
//  ContentView.swift
//  Traffic Lights SwiftUI
//
//  Created by Vladislav on 21.07.2020.
//  Copyright © 2020 Vladislav Cheremisov. All rights reserved.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var buttonText = "Start"
    @State private var currentLight = CurrentLight.red
    
    private func startButtonPressed() {
        switch currentLight {
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                Lamp(color: .red, opacity: currentLight == .red ? 1 : 0.3)
                Lamp(color: .yellow, opacity: currentLight == .yellow ? 1 : 0.3)
                Lamp(color: .green, opacity: currentLight == .green ? 1 : 0.3)
                
                Spacer()
                
                SwitchButton(title: buttonText) {
                    self.buttonText = "NEXT"
                    self.startButtonPressed()
                }
            }.padding()
        }
    }
}
