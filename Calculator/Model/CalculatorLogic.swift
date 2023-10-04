//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Eng. Motlaq Alnassafi on 03/10/2023.
//

import UIKit

// make the calculatorlogic struct do all the calculation required by the calculator

struct CalculatorLogic {
    var number: Int?
    var val2: (calcMethod: String, firstNumber: Int)?
    
    
    mutating func setNumber(_ number: Int) {
        self.number = number
    }
    
    mutating func calculate(_ operation: String) -> Int? {
        
        if let n = number {
            if operation == "C" {
                return 0
            } else if (operation == "+" || operation == "-" || operation == "/" || operation == "X") {
                val2 = (calcMethod: operation, firstNumber: n)
                return n
            } else if operation == "="{
                return performTwoNumberCalculation(n)
            }
        }
        return nil
    }
    
    private func performTwoNumberCalculation(_ secondNumber: Int) -> Int? {
        if let operation = val2?.calcMethod, let firstNumber = val2?.firstNumber {
            if operation == "+" {
                return (firstNumber + secondNumber)
            } else if operation == "-" {
                return (firstNumber - secondNumber)
            }else if operation == "/" {
                if secondNumber != 0 {
                    return (firstNumber / secondNumber)
                } else {
                    return nil
                }
            }else if operation == "X" {
                return (firstNumber * secondNumber)
            }
        }
        return nil
    }
}
