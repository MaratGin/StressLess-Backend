//
//  File.swift
//  
//
//  Created by Marat Giniyatov on 29.05.2023.
//

import Foundation
import Fluent
import Vapor

struct CreateMethodics: AsyncMigration {
    let schema: String = "methodics"
    func prepare(on database: Database) async throws {
        try await database.schema(schema)
            .id()
            .field("name", .uuid)
            .field("description", .string)
            .field("duration", .string)
            .field("review", .string)
            .create()
    }

    func revert(on database: Database) async throws {
        try await database.schema(schema).delete()
    }
}
