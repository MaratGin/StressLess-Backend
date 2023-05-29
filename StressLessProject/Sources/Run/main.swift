//
//  File.swift
//  
//
//  Created by Marat Giniyatov on 27.05.2023.
//

import App
import Vapor

var env = try Environment.detect()
try LoggingSystem.bootstrap(from: &env)
let app = Application(env)
defer { app.shutdown() }
try configure(app)
try app.run()
