//
//  CalculateViewModel.swift
//  Caculator_SwiftUI
//
//  Created by 김진웅 on 6/7/24.
//

import Foundation

final class CalculateViewModel: ObservableObject {
    @Published var displayText: String = "0"
    private var currentInput: Double = 0
    private var previousInput: Double?
    private var currentOperation: CalculateButtonStyle?
    private var isTyping: Bool = false
    
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
