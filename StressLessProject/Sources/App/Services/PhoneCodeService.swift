//
//  File.swift
//  
//
//  Created by Marat Giniyatov on 28.05.2023.
//

import Foundation

class PhoneCodeService {
    
    func signUpMessage() -> Message {
        var code = String()
            for _ in 1...6 {
               code += "\(Int.random(in: 1...9))"
            }
       return  Message(text: "Добро пожаловать в StressLess! Ваш код - ", code: code)
        
    }
    
    
    
}
