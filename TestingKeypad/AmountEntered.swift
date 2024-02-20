//
//  AmountEntered.swift
//  TestingKeypad
//
//  Created by Ellieanna Ross on 2/16/24.
//

import Foundation

@Observable
class AmountEntered {
    
    var amount = 0.0
        
    var decimalPlaces = 0
    
    func addDigit(num: Int) {
        if (decimalPlaces == 0) {
            amount *= 10
            amount += Double(num)
        } else if (decimalPlaces < 3) {
            amount += Double(num)/pow(10, Double(decimalPlaces))
            decimalPlaces += 1
        }
        
    }
    
    func removeDigit() {
        if (decimalPlaces > 0) {
            var str = String(amount)
            str.remove(at: str.index(before: str.endIndex))
            print(str)
            amount = Double(str) ?? 0.0
            decimalPlaces -= 1

        } else {
            amount -= Double(Int(floor(amount)) % 10)
            amount /= 10
        }
        

    }
    
    func enableDecimal() {
        decimalPlaces = 1
    }
 
    
}
