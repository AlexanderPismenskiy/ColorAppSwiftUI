//
//  SliderLabel.swift
//  ColorAppSwiftUI
//
//  Created by Alexander Pismenskiy on 17.12.2020.
//

import SwiftUI

struct SliderValueLabel: View {
   
    let value: Double
    
    var body: some View {
            Text("\(lround(value))")
                .frame(width: 40, alignment: .leading)
                .foregroundColor(.white)
        }
    }


struct SliderLabel_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.gray
            SliderValueLabel(value: 60)
        }
    }
}

