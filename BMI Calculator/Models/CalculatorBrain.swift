//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Rhiannon Stanford on 5/12/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//


import UIKit

struct CalculatorBrain {
    
    var bmi: BMI? // can be a float or nil, so we add the ? optional
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies.", color: UIColor.blue )
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Normal weight.", color: UIColor.green )
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pie.", color: UIColor.red )
        }
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String? {
        return self.bmi?.advice ?? "No advice."
    }
    
    func getColor() -> UIColor? {
        return self.bmi?.color ?? UIColor.white
    }
}
