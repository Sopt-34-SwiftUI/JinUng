//
//  ContentView.swift
//  Caculator_SwiftUI
//
//  Created by 김진웅 on 5/16/24.
//

import SwiftUI

struct ContentView: View {
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
                
                let buttons: [[CalculateButtonStyle]] = [
                    [.ac, .plusMinus, .percent, .divider],
                    [.seven, .eight, .nine, .multiply],
                    [.four, .five, .six, .subtract],
                    [.one, .two, .three, .add],
                    [.zero, .decimal, .equal]
                ]
                
                ForEach(buttons, id: \.self) { row in
                    HStack {
                        ForEach(row, id: \.self) { button in
                            Button {
                                
                            } label : {
                                Text(button.stringValue)
                                    .frame(width: button.width, height: 80)
                                    .background(button.backgroundColor)
                                    .cornerRadius(40)
                                    .foregroundColor(button.foregroundColor)
                                    .font(.system(size: 33))
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
