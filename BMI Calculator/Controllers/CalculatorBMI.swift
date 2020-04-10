//
//  CalculatorBMI.swift
//  BMI Calculator
//
//  Created by 1101373 on 2020/04/10.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmiValue: String?

    mutating func calculateBMI(height: Float, weight: Float) {
        let bmi = weight / pow(height, 2)
        bmiValue = String(format: "%.1f", bmi)
    }

    func getBMIValue() -> String {
        return bmiValue ?? "0.0"
    }
}
