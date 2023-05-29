//
//  File.swift
//  
//
//  Created by Marat Giniyatov on 28.05.2023.
//

import Foundation
import Vapor
import Fluent

struct CreateSms: AsyncMigration {
    let schema: String = SchemaEnum.auths.rawValue
    func prepare(on database: Database) async throws {
        try await database.schema(schema)
            .id()
            .field("user_id", .uuid)
            .field("number", .string)
            .field("code", .string)
            .create()
    }

    func revert(on database: Database) async throws {
        try await database.schema(schema).delete()
    }
}
