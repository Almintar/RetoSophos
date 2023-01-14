//
//  Users.swift
//  RetoSophos
//
//  Created by Almintar Olaya on 5/01/23.
//

import Foundation

struct UsersResponse: Decodable {
    let id: String?
    let nombre: String?
    let apellido: String?
    let acceso: Bool?
    let admin: Bool?
}

