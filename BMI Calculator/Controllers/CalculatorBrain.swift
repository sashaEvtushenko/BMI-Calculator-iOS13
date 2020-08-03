//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Sasha Evtushenko on 8/2/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(with height: Float, and weight: Float) {
        let bmiValue = weight / pow(height, 2)
        switch bmiValue {
        case 0..<18.5:
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .systemBlue)
        case 18.5...24.9:
            bmi = BMI(value: bmiValue, advice: "You're healthy!", color: .systemGreen)
        default:
            bmi = BMI(value: bmiValue, advice: "Stop eating too much!", color: .systemRed)
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Check BMI table"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.clear
    }
}
