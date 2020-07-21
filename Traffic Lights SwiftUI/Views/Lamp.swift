//
//  Lamp.swift
//  Traffic Lights SwiftUI
//
//  Created by Vladislav on 21.07.2020.
//  Copyright © 2020 Vladislav Cheremisov. All rights reserved.
//

import SwiftUI

struct Lamp: View {
    
    let color: UIColor
    var opacity: Double?
    
    var body: some View {
        Color(color)
            .opacity(opacity ?? 0.2)
            .frame(width: 150, height: 150)
            .clipShape(Capsule())
            .overlay(Circle()
                .strokeBorder(
                    Color.white, lineWidth: 4
            ))
    }
}

struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        Lamp(color: .red)
    }
}
