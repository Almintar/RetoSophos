//
//  LoginView.swift
//  RetoSophos
//
//  Created by Almintar Olaya on 22/12/22.
//

import SwiftUI

struct LoginView: View {
    @State var Email: String = ""
    @State var Password: String = ""
    
    var body: some View {
        
        VStack {
            Image("Image_Sophos").resizable()
                //.padding(50) //se usa si se quiere que el color gris de fondo quede detras de la imagen con transparencias
                .frame(width: 250, height: 100)
            Spacer()
            
            VStack {
                Text("Ingresa tus datos para acceder")
                    .font(.title2)
                    .fontWeight(.medium)
                    .foregroundColor(Color(red: 0.471, green: 0.0, blue: 0.992))
                    .multilineTextAlignment(.center)
                    .frame(width: 170, height: 100.0) // revisar cuanto queda de separacion respecto a la imagen final
                    .padding()
                
                HStack {
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .foregroundColor(Color(red: 0.471, green: 0.0, blue: 0.992))
                        .frame(width: 40, height: 40)
                        .padding(15)
                        .background(Color.white)
                        .frame(width: 50.0, height: 55.0)
                    
                    TextField("Email", text: $Email)
                        .keyboardType(.emailAddress)    //para que me genere el arroba
                        .disableAutocorrection(true)    //desabilite la autocorreccion
                        .padding(8)
                        .font(.headline)
                        .textFieldStyle(.roundedBorder)
                        .cornerRadius(8)
                        .onChange(of: Email, perform: {value in print("new value \(value)")})
                }
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(red: 0.471, green: 0.0, blue: 0.992), lineWidth: 2))
                
                HStack(alignment: .center) {
                    
                    Image(systemName: "key.horizontal")
                        .resizable()
                        .foregroundColor(Color(red: 0.471, green: 0.0, blue: 0.992))
                        .frame(width: 40, height: 25)
                        .padding(15)
                        .background(Color.white)
                        .frame(width: 50.0, height: 55.0)
                    
                    SecureField("Password", text: $Password)
                        .keyboardType(.default)                        .disableAutocorrection(true)    //desabilite la autocorreccion
                        .autocapitalization(.none)
                        .padding(8)
                        .font(.headline)
                        .textFieldStyle(.roundedBorder)
                        .cornerRadius(8)
                        .onChange(of: Password, perform: {value in print("Password value \(value)")})
                
                    //Image(systemName: "eye.fill")
                      //  .resizable()
                      //  .foregroundColor(Color.purple)
                      //  .frame(width: 30, height: 20)
                        //.padding(15)
                      //  .background(Color.white)
                        //.frame(width: 50.0, height: 55.0)
                }
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(red: 0.471, green: 0.0, blue: 0.992), lineWidth: 2))
            Spacer()
                
            }
            
            VStack {
                
                Button("Ingresar") {
                    NetworkingProvider.shared.login(email: Email, password: Password)
                    //let access = NetworkingProvider.shared.access
                    
                }
                .font(.title2)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, maxHeight: 50)
                .background(PassIsAppropriate() ?  Color(red: 0.471, green: 0.0, blue: 0.992) : Color.gray)
                .foregroundColor(.white)
                .cornerRadius(6)
                
                .disabled(!PassIsAppropriate())
                
                Button {
                    
                } label: {
                    Image(systemName: "touchid")
                        .padding(.leading, 0.0)
                        .font(.title)
                        .frame(width: 50, height: 25)
                        .foregroundColor(Color(red: 0.471, green: 0.0, blue: 0.992))
                    Text("Ingresar con huella")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(Color(red: 0.471, green: 0.0, blue: 0.992))
                    
                }
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(red: 0.471, green: 0.0, blue: 0.992), lineWidth: 2))
            Spacer()
            }
            
        }
        .padding(.horizontal, 20.0)
        Spacer()
        
    }
    
    func PassIsAppropriate() -> Bool {  //To enable when you have data
        if Password.count >= 5 {
            return true
        }
        return false
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
