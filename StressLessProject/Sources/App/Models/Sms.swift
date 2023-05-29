//
//  File.swift
//  
//
//  Created by Marat Giniyatov on 28.05.2023.
//

import Foundation
import Vapor
import Fluent

final class Sms: Model, Content {
    
    static let schema: String = SchemaEnum.auths.rawValue
    
    @ID(key: .id)
    var id: UUID?

    @OptionalField(key: "user_id")
    var userId: UUID?
    
    @Field(key: "number")
    var email: String?
    
    @OptionalField(key: "code")
    var number: String?
    
}
