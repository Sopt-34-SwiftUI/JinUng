//
//  CalculateButton.swift
//  Caculator_SwiftUI
//
//  Created by 김진웅 on 5/16/24.
//

import SwiftUI

enum CalculateButtonStyle {
    case ac, plusMinus, percent, divider
    case seven, eight, nine, multiply
    case four, five, six, subtract
    case one, two, three, add
    case zero, decimal, equal
}

extension CalculateButtonStyle {
    var stringValue: String {
        switch self {
        case .ac: "AC"
        case .plusMinus: "+/-"
        case .percent: "%"
        case .divider: "/"
        case .seven: "7"
        case .eight: "8"
        case .nine: "9"
        case .multiply: "x"
        case .four: "4"
        case .five: "5"
        case .six: "6"
        case .subtract: "-"
        case .one: "1"
        case .two: "2"
        case .three: "3"
        case .add: "+"
        case .zero: "0"
        case .decimal: "."
        case .equal: "="
        }
    }
    
    var width: CGFloat {
        self == .zero ? 160 : 80
    }
    
    var backgroundColor: Color {
        switch self {
        case .ac, .plusMinus, .percent: .gray
        case .divider, .multiply, .subtract, .add, .equal: .orange
        default: .darkGray
        }
    }
    
    var foregroundColor: Color {
        switch self {
        case .ac, .plusMinus, .percent: .black
        default: .white
        }
    }
}
