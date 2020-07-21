//
//  SwitchButton.swift
//  Traffic Lights SwiftUI
//
//  Created by Vladislav on 21.07.2020.
//  Copyright © 2020 Vladislav Cheremisov. All rights reserved.
//

import SwiftUI

struct SwitchButton: View {
    
    var text: String?
    
    var body: some View {
        Text(text ?? "Start")
            .font(.title)
            .foregroundColor(.white)
            .frame(width: 200.0, height: 75.0)
            .overlay(RoundedRectangle(cornerRadius: 15)
                .strokeBorder(Color.white, lineWidth: 4))
            .background(RoundedRectangle(cornerRadius: 15)
                .fill(Color.blue))
    }
}

struct SwitchButton_Previews: PreviewProvider {
    static var previews: some View {
        SwitchButton()
    }
}
