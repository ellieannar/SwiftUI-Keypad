//
//  TestingKeypadApp.swift
//  TestingKeypad
//
//  Created by Ellieanna Ross on 2/15/24.
//

import SwiftUI


@main
struct TestingKeypadApp: App {

    
    var body: some Scene {
        WindowGroup {
            KeypadView(amount: AmountEntered.init(), keypadButton: KeypadButton())
        }
    }
    
}
