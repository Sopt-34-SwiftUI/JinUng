//
//  ContentView.swift
//  Caculator_SwiftUI
//
//  Created by 김진웅 on 5/16/24.
//

import SwiftUI

struct ContentView: View {
    private let buttons: [[CalculateButtonStyle]] = [
        [.ac, .plusMinus, .percent, .divider],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .subtract],
        [.one, .two, .three, .add],
        [.zero, .decimal, .equal]
    ]
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    Text("331,460")
                        .padding()
                        .font(.system(size: 75))
                        .foregroundStyle(.white)
                }
                
                ForEach(buttons, id: \.self) { row in
                    CalculateButtonRow(buttonRows: row)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
