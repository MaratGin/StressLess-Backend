import Fluent
import Vapor

final class User: Model, Content {
    static let schema = "users"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "username")
    var username: String
    
    @OptionalField(key: "email")
    var email: String?
    
    @OptionalField(key: "number")
    var number: String?
    
    @Field(key: "password")
    var password: String

    init() { }

    init(id: UUID? = nil, username: String, email: String, password: String) {
        self.id = id
        self.username = username
        self.email = email
        self.password = password
    }
}
