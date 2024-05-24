//
//  ContentView.swift
//  Caculator_SwiftUI
//
//  Created by 김진웅 on 5/16/24.
//

import SwiftUI

struct ContentView: View {
    @State private var currentInput: Double = 0
    @State private var previousInput: Double = 0
    @State private var currentOperation: CalculateButtonStyle?
    @State private var inputValue = "0"
    
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
                    Text(inputValue)
                        .padding()
                        .font(.system(size: 75))
                        .foregroundStyle(.white)
                }
                
                ForEach(buttons, id: \.self) { row in
                    CalculateButtonRow(buttonRows: row, action: buttonPressed)
                }
            }
        }
    }
    
    func buttonPressed(_ style: CalculateButtonStyle) {
        guard let input = Double(inputValue) else { return }
        switch style {
        case .ac:
            currentInput = 0
            previousInput = 0
            currentOperation = nil
            inputValue = "0"
        case .plusMinus:
            inputValue = "-\(input)"
        case .percent:
            inputValue = "\(input / 100)"
        case .divider, .multiply, .subtract, .add:
            previousInput = input
            currentOperation = style
            inputValue = "0"
        case .equal:
            guard let operation = currentOperation else { return }
            let result = performOperation(
                previous: previousInput,
                current: input,
                operation: operation
            )
            inputValue = "\(result)"
            previousInput = result
            currentOperation = nil
        default:
            if inputValue == "0" {
                inputValue = style.stringValue
            } else {
                inputValue += style.stringValue
            }
        }
    }
    
    func performOperation(
        previous: Double,
        current: Double,
        operation: CalculateButtonStyle
    ) -> Double {
        switch operation {
        case .add:
            return previous + current
        case .subtract:
            return previous - current
        case .multiply:
            return previous * current
        case .divider:
            return previous / current
        default:
            fatalError("Unsupported operation")
        }
    }
}

#Preview {
    ContentView()
}
