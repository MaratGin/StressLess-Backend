//
//  File.swift
//  
//
//  Created by Marat Giniyatov on 28.05.2023.
//

import Foundation
import Vapor
/*
 enum SmsMoyaConfiguration {
 case sendCode(from: String,code: String, to: String)
 //    case userDetail(userId: Int)
 }
 
 extension SmsMoyaConfiguration: TargetType {
 
 // This is the base URL we'll be using, typically our server.
 var baseURL: URL {
 switch self {
 case .sendCode(_,_,_):
 guard let url =  URL(string: PhoneData.POSTurl) else { fatalError("Incorrect URL!") }
 return url
 }
 }
 
 // This is the path of each operation that will be appended to our base URL.
 var path: String {
 switch self {
 case .sendCode(_,_,_):
 return "/SendSMS"
 }
 }
 
 // Here we specify which method our calls should use.
 var method: Moya.Method {
 switch self {
 case .sendCode(_,_,_):
 return .post
 }
 }
 
 // Here we specify body parameters, objects, files etc.
 // or just do a plain request without a body.
 // In this example we will not pass anything in the body of the request.
 var task: Task {
 switch self {
 case .sendCode(let from, let code, let to):
 return .requestParameters(parameters: ["number": from, "text" :code, "destination": to], encoding: JSONEncoding.default)
 }
 }
 
 // These are the headers that our service requires.
 // Usually you would pass auth tokens here.
 var headers: [String: String]? {
 return ["Content-type": "application/json", "Authorization":"Bearer \(PhoneData.APIkey)"]
 }
 
 // This is sample return data that you can use to mock and test your services,
 // but we won't be covering this.
 var sampleData: Data {
 return Data()
 }
 }
 */
