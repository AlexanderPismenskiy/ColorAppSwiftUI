//
//  ColorView.swift
//  ColorAppSwiftUI
//
//  Created by Alexander Pismenskiy on 17.12.2020.
//

import SwiftUI

struct ColorView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .foregroundColor(Color(
            red: (red/255),
            green: (green/255),
            blue:(blue/255)
            ))
            .frame(height: 200)
            .overlay(RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 3))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 50, green: 100, blue: 50)
    }
}
