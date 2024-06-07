//
//  CalculateButtonRow.swift
//  Caculator_SwiftUI
//
//  Created by 김진웅 on 5/16/24.
//

import SwiftUI

struct CalculateButtonRow: View {
    let buttonRows: [CalculateButtonStyle]
    let action: (CalculateButtonStyle) -> Void
    
    var body: some View {
        HStack {
            ForEach(buttonRows, id: \.self) { style in
                CalculateButton(
                    text: style.stringValue,
                    backgroundColor: style.backgroundColor,
                    foregroundColor: style.foregroundColor,
                    width: style.width,
                    action: { action(style) }
                )
            }
        }
    }
}
