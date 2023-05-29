import Fluent
import Vapor

struct UserController: RouteCollection {

    func boot(routes: RoutesBuilder) throws {
        let users = routes.grouped("users")
        users.get(use: getAllUsers)
        users.post(use: create)
        users.get(":id", use: getUserById)
//        todos.group(":todoID") { todo in
//            todo.delete(use: delete)
//        }
    }

    func getAllUsers(req: Request) async throws -> [User] {
       return try await User.query(on: req.db).all()
    }
    
    func getUserById(req: Request) async throws -> User {
        guard let user = try await User.find(req.parameters.get("id"),on: req.db) else {
            throw Abort(.notFound)
        }
        return user
    }


    func create(req: Request) async throws -> User {
        guard let user = try? req.content.decode(User.self) else {
            throw Abort(.custom(code: 499, reasonPhrase: "Can't decode received data into model"))
        }
        try await user.save(on: req.db)
        return user
    }

//    func delete(req: Request) async throws -> HTTPStatus {
//        guard let todo = try await Todo.find(req.parameters.get("todoID"), on: req.db) else {
//            throw Abort(.notFound)
//        }
//        try await todo.delete(on: req.db)
//        return .noContent
//    }
}
