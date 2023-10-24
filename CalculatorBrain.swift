//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Luis Santiago  on 10/24/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmiValue :Float = 0.0
    mutating func calculateBMI(height:Float,weight:Float){
        let bmi = weight / (height*height)
        
        if bmiValue < 18.5{
            print("underweight")
        }
        else if bmiValue < 24.9 {
            print("normal weight")
        }
        else {
            print("overWeight")
        }
    }
    
    func getBMIValue() ->String {
        if bmiValue != nil{
            let bmiTo1DecimalPlace = String(format:"%.1f",bmiValue)
            return bmiTo1DecimalPlace
        }else {
            return "0.0"
        }
    }
    
}
