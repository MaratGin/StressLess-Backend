import Fluent
import Vapor

struct SmsController: RouteCollection {

    func boot(routes: RoutesBuilder) throws {
        let users = routes.grouped("sms")
        users.get(use: getAllUsers)
        users.post(use: sendMessage)
        users.get(":id", use: getUserById)
//        todos.group(":todoID") { todo in
//            todo.delete(use: delete)
//        }
    }

    func getAllUsers(req: Request) async throws -> [Sms] {
       return try await Sms.query(on: req.db).all()
    }
    
    func getUserById(req: Request) async throws -> Sms {
        guard let user = try await Sms.find(req.parameters.get("id"),on: req.db) else {
            throw Abort(.notFound)
        }
        return user
    }


    func sendMessage(req: Request) async throws -> Sms {
        guard let sms = try? req.content.decode(Sms.self) else {
            throw Abort(.custom(code: 499, reasonPhrase: "Can't decode received data into model"))
        }
        
        let response = try await req.client.post(URI(string: "\(PhoneData.POSTurl)/sendSMS")) {req in
            try req.content.encode(["number": PhoneData.serverPhoneNumber, "destination": sms.number ?? "nil" , "text": "Добро пожаловать в  StressLess! Ваш код - 312657" ])
            try req.headers.bearerAuthorization = BearerAuthorization(token: PhoneData.APIkey)
        }
        try await sms.save(on: req.db)
        return sms
    }
}
