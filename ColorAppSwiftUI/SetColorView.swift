//
//  ContentView.swift
//  ColorAppSwiftUI
//
//  Created by Alexander Pismenskiy on 15.12.2020.
//

import SwiftUI

struct SetColorView: View {
    
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    var body: some View {
        
        VStack(spacing: 15) {
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(Color(
                red:
                Double(CGFloat(redSliderValue/255)),
                green:
                Double(CGFloat(greenSliderValue/255)),
                blue:
                Double(CGFloat(blueSliderValue/255))
                ))
                .frame(width: 350, height: 200)
            
            VStack {
                
                HStack {
                    ColorSlider(value: $redSliderValue, valueColor: .red, trackColor: .red)
                    TextFieldValue(value: $redSliderValue, borderColor: .red)
                }
                
                HStack {
                    ColorSlider(value: $greenSliderValue, valueColor: .green, trackColor: .green)
                    TextFieldValue(value: $greenSliderValue, borderColor: .green)
                }
                
                HStack {
                    ColorSlider(value: $blueSliderValue, valueColor: .blue, trackColor: .blue)
                    TextFieldValue(value: $blueSliderValue, borderColor: .blue)
                }
            }
            
            Spacer()
        
        }.padding()
    }
}

struct ColorSlider: View {
    @Binding var value: Double
    var valueColor: Color
    var trackColor: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))").foregroundColor(valueColor)
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(trackColor)
        }
    }
}

struct TextFieldValue: View {
    
    @Binding var value: Double
    var borderColor: Color
    
    var body: some View {
        TextField("", value: $value, formatter: NumberFormatter())
            .frame(width: 50, height: 40)
            .multilineTextAlignment(.center)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .border(borderColor)
    }
}

extension NumberFormatter {
    static var currency: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .none
        return formatter
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SetColorView()
    }
}


