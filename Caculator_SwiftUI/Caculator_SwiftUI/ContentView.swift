//
//  ContentView.swift
//  Caculator_SwiftUI
//
//  Created by 김진웅 on 5/16/24.
//

import SwiftUI

struct ContentView: View {
    @State private var currentInput: Double = 0
    @State private var previousInput: Double?
    @State private var displayText: String = "0"
    @State private var currentOperation: CalculateButtonStyle?
    @State private var isTyping: Bool = false
    
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
                    Text(displayText)
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
        switch style {
        case .ac:
            clear()
        case .plusMinus:
            toggleSign()
        case .percent:
            applyPercent()
        case .divider, .multiply, .subtract, .add:
            setOperation(style)
        case .equal:
            calculateResult()
        case .decimal:
            appendDecimal()
        default:
            appendNumber(style.stringValue)
        }
    }
    
    private func clear() {
        displayText = "0"
        currentInput = 0
        previousInput = nil
        currentOperation = nil
        isTyping = false
    }
    
    private func toggleSign() {
        if currentInput != 0 {
            currentInput = -currentInput
            setDisplayText(currentInput)
        }
    }
    
    private func applyPercent() {
        currentInput = currentInput / 100
        setDisplayText(currentInput)
    }
    
    private func setOperation(_ operation: CalculateButtonStyle) {
        if isTyping {
            calculateResult()
        }
        
        previousInput = currentInput
        currentOperation = operation
        displayText = operation.stringValue
        isTyping = false
    }
    
    private func calculateResult() {
        guard let previousNumber = previousInput,
              let nowOperation = currentOperation
        else {
            return
        }
        
        switch nowOperation {
        case .divider:
            currentInput = previousNumber / currentInput
        case .multiply:
            currentInput = previousNumber * currentInput
        case .subtract:
            currentInput = previousNumber - currentInput
        case .add:
            currentInput = previousNumber + currentInput
        default:
            break
        }
        
        setDisplayText(currentInput)
        previousInput = nil
        currentOperation = nil
        isTyping = false
    }
    
    private func appendDecimal() {
        if !displayText.contains(".") {
            displayText.append(".")
            isTyping = true
        }
    }
    
    private func appendNumber(_ number: String) {
        if displayText == "0" || !isTyping {
            displayText = number
        } else {
            displayText.append(number)
        }
        
        currentInput = Double(displayText) ?? 0
        setDisplayText(currentInput)
        isTyping = true
    }
    
    private func setDisplayText(_ number: Double) {
        let condition = number.truncatingRemainder(dividingBy: 1) == 0
        displayText = condition ? String(format: "%.0f", number) : "\(number)"
    }
}

#Preview {
    ContentView()
}
