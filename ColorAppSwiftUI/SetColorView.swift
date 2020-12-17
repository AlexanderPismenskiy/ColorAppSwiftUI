//
//  ContentView.swift
//  ColorAppSwiftUI
//
//  Created by Alexander Pismenskiy on 15.12.2020.
//

import SwiftUI

struct SetColorView: View {
    
    @State private var red = Double.random(in: 0...255)
    @State private var green = Double.random(in: 0...255)
    @State private var blue = Double.random(in: 0...255)
    
    var body: some View {
        
        ZStack {
            Color(.gray)
                .ignoresSafeArea()
            
            VStack(spacing: 15) {
               
                ColorView(red: red, green: green, blue: blue)
                
                VStack {
                    
                    ColorSlider(sliderValue: $red, color: .red)
                    
                    ColorSlider(sliderValue: $green, color: .green)
                    
                    ColorSlider(sliderValue: $blue, color: .blue)
                }
                Spacer()
            
            }.padding()
        }
    }
}

extension UIApplication {
    func endEditing() {
        sendAction(
            #selector(UIResponder.resignFirstResponder),
            to: nil,
            from: nil,
            for: nil
        )
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SetColorView()
    }
}


