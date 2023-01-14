//
//  NetworkingProvider.swift
//  RetoSophos
//
//  Created by Almintar Olaya on 3/01/23.
//

import Foundation
import Alamofire

final class NetworkingProvider {
    
    static let shared = NetworkingProvider()
    
    var access : Bool?
     
     
       
        func login(email: String, password: String) {
            let request = URLRequest(url: URL(string: "https://6w33tkx4f9.execute-api.us-east-1.amazonaws.com/RS_Usuarios?idUsuario=\(email)&clave=\(password)")!)
            let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                if let data = data {
                    do {
                        
                        let response = try JSONDecoder().decode(UsersResponse.self, from: data)
                        //The database has been checked and the user is successfully authenticated. Continue with saving the user data or whatever you need to do.
                        print(response)

                    }
                    
                    catch {
                        print("Could not decode the data. Error: \(error)")
                    }
                }
            }
            task.resume()
        }
        
    
}
