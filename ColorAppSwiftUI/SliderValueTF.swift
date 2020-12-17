//
//  SliderValueTF.swift
//  ColorAppSwiftUI
//
//  Created by Alexander Pismenskiy on 17.12.2020.
//

import SwiftUI

struct SliderValueTF: View {
    
    @Binding var textValue: String
    @Binding var value: Double
    
    @State private var showAlert = false
    
    var body: some View {
        TextField("", text: $textValue, onCommit: checkValue)
            .frame(width: 50, height: 40)
            .multilineTextAlignment(.center)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .border(Color.black)
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Wrong Format"),
                    message: Text("Please enter value from 0 to 255")
                )
            }
    }
}

extension SliderValueTF {
    private func checkValue() {
        if let value = Int(textValue), (0...255).contains(value) {
            self.value = Double(value)
        } else {
            showAlert = true
            value = 0
            textValue = "0"
        }
    }
}

struct SliderValueTF_Previews: PreviewProvider {
    static var previews: some View {
        SliderValueTF(textValue: .constant("200"), value: .constant(200))
    }
}
