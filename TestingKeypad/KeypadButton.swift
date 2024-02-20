//
//  KeypadButton.swift
//  TestingKeypad
//
//  Created by Ellieanna Ross on 2/15/24.
//

import Foundation
import SwiftUI

struct KeypadButton {
    
    
    
    enum ButtonType {
        case number (Int)
        case decimal
        case backspace
    }
    
    func view(buttonType: ButtonType, amount: AmountEntered) -> AnyView {
        
        switch buttonType {
        case .number(let num):
            return AnyView(Button(action: {
                amount.addDigit(num: num)
                print("\(amount.amount), added: \(num)")
            }, label: {
                Text("\(num)")
                    .font(.title)
                    .foregroundStyle(.black)
                    
                    .frame(width: 100, height: 100)
                    .background()
                    .clipShape(Circle())
                    .shadow(radius: 5, x: -5, y:5)
                    .overlay{
                        Circle()
                            .stroke(.black, lineWidth: 3.0)
                    }
            }))
            
            
            
        case .backspace:
            return AnyView(Button(action: {
                amount.removeDigit()
                print("\(amount.amount), deleted last num")
            }, label: {
                Text("\(Image(systemName: "delete.left"))")
                    .font(.title)
                    .foregroundStyle(.black)
                    
                    .frame(width: 100, height: 100)
                    .background()
                    .clipShape(Circle())
                    .shadow(radius: 5, x: -5, y:5)
                    .overlay{
                        Circle()
                            .stroke(.black, lineWidth: 3.0)
                    }
                
            }))
            
        case .decimal:
            return AnyView(Button(action: {
                amount.enableDecimal()
                print("\(amount.amount), added: decimal")
            }, label: {
                Text(".")
                    .font(.title)
                    .foregroundStyle(.black)
                    .frame(width: 100, height: 100)
                    .background()
                    .clipShape(Circle())
                    .shadow(radius: 5, x: -5, y:5)
                    .overlay{
                        Circle()
                            .stroke(.black, lineWidth: 3.0)
                    }
            }))
        }
    }
    
    
    
}
