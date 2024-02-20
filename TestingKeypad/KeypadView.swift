//
//  KeypadView.swift
//  TestingKeypad
//
//  Created by Ellieanna Ross on 2/15/24.
//

import SwiftUI



struct KeypadView: View {
    var amount: AmountEntered
    var keypadButton: KeypadButton
 
    
    var body: some View {
        VStack {
            HStack {
                Text("$")
                    .padding(.leading, 25)
                    .font(.system(size: 50))
                Spacer()
                Text("\(amount.decimalPlaces == 0 ? String(format: "%.0f", amount.amount) :  String(format: "%.2f", amount.amount) )")
                    .multilineTextAlignment(.trailing)
                    .padding(.trailing, 25)
                    .font(.system(size: 50))
            }
            
            HStack {
                keypadButton.view(buttonType: KeypadButton.ButtonType.number(1), amount: amount)
                keypadButton.view(buttonType: KeypadButton.ButtonType.number(2), amount: amount)
                keypadButton.view(buttonType: KeypadButton.ButtonType.number(3), amount: amount)
            }
            HStack {
                keypadButton.view(buttonType: KeypadButton.ButtonType.number(4), amount: amount)
                keypadButton.view(buttonType: KeypadButton.ButtonType.number(5), amount: amount)
                keypadButton.view(buttonType: KeypadButton.ButtonType.number(6), amount: amount)
            }
            HStack {
                keypadButton.view(buttonType: KeypadButton.ButtonType.number(7), amount: amount)
                keypadButton.view(buttonType: KeypadButton.ButtonType.number(8), amount: amount)
                keypadButton.view(buttonType: KeypadButton.ButtonType.number(9), amount: amount)
            }
            HStack {
                keypadButton.view(buttonType: KeypadButton.ButtonType.decimal, amount: amount)
                keypadButton.view(buttonType: KeypadButton.ButtonType.number(0), amount: amount)
                keypadButton.view(buttonType: KeypadButton.ButtonType.backspace, amount: amount)
            }
        }
        .frame(width: 300)
        
    }
    
   

}

#Preview {
    KeypadView(amount: AmountEntered(), keypadButton: KeypadButton())
}
