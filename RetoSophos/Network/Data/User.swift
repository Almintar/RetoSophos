//
//  User.swift
//  RetoSophos
//
//  Created by Almintar Olaya on 3/01/23.
//

import Foundation


struct UserResponse: Decodable {
    
    let responses: Int?
    let Users: Data?
    
}

struct Users: Decodable {
    	
    let id: String?
    let nombre: String?
    let apellido: String?
    let acceso: Boolean?
    let admin: Boolean?
}
