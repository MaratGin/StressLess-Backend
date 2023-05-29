//
//  File.swift
//  
//
//  Created by Marat Giniyatov on 27.05.2023.
//

import Foundation
import Fluent

extension User {
    struct FieldKeys {
        
        static var username: FieldKey {"username"}
        static var age: FieldKey {"age"}
        static var firstName: FieldKey {"first_name"}
        static var secondName: FieldKey {"second_name"}
        static var email: FieldKey {"email"}
        static var number: FieldKey {"number"}
        static var password: FieldKey {"password"}
        static var createdAt: FieldKey {"created_at"}
        static var role: FieldKey {"role"}
        static var updatedAt: FieldKey {"updated_at"}
        static var userImage: FieldKey {"user_image"}
        
    }
    
}
