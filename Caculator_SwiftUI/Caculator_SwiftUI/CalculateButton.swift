//
//  CalculateButton.swift
//  Caculator_SwiftUI
//
//  Created by 김진웅 on 5/16/24.
//

import SwiftUI

struct CalculateButton: View {
    let text: String
    let backgroundColor: Color
    let foregroundColor: Color
    let width: CGFloat
    
    var body: some View {
        Button {
            
        } label : {
            Text(text)
                .frame(width: width, height: 80)
                .background(backgroundColor)
                .foregroundColor(foregroundColor)
                .cornerRadius(40)
                .font(.system(size: 33))
        }
    }
}
