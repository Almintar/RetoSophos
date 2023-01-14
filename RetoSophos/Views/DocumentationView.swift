//
//  DocumentationView.swift
//  RetoSophos
//
//  Created by Almintar Olaya on 2/01/23.
//

import SwiftUI
struct Device {
    let title: String
    let imageName: String
}
let type = [
    Device(title: "Tarjeta", imageName: ""),
    Device(title: "Cedula", imageName: ""),
    Device(title: "Cedula de extrangeria", imageName: ""),
    Device(title: "Registro civil", imageName: ""),
]

struct DocumentationView: View {
    @State var Id: String = ""
    @State var Nombre: String = ""
    @State var Apellido: String = ""
    @State var Correo: String = ""
    @State var Tipodato: String = ""

    
    var body: some View {
        
        VStack {
            Text("Envío de documentación")
                .font(.title2)
                .fontWeight(.semibold)
                .padding(.top, 20.0)
                .padding(.trailing, 95.0)
            Spacer()
            
            VStack (alignment: .center) {

             
                
                Image(systemName: "camera")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 200, height: 200)
            Spacer()
            }
            
            
            VStack {
                HStack {
                    Image(systemName: "creditcard.and.123")
                        .resizable()
                        .frame(width: 40, height: 30)
                        .padding(15)
                        .background(Color.white)
                        .frame(width: 50.0, height: 55.0)
                    
                    TextField("Numero de documento", text: $Id)
                        .keyboardType(.default)    //para que me genere el arroba
                        .disableAutocorrection(true)    //desabilite la autocorreccion
                        .padding(8)
                        .font(.headline)
                        .textFieldStyle(.roundedBorder)
                        .cornerRadius(8)
                        .onChange(of: Id, perform: {value in print("new value \(value)")})
                }
                TextField("Nombre", text: $Nombre)
                    .keyboardType(.default)    //para que me genere el arroba
                    .disableAutocorrection(true)    //desabilite la autocorreccion
                    .padding(8)
                    .font(.headline)
                    .textFieldStyle(.roundedBorder)
                    .cornerRadius(8)
                    .onChange(of: Id, perform: {value in print("new value \(value)")})
                
                TextField("Apellido", text: $Apellido)
                    .keyboardType(.default)    //para que me genere el arroba
                    .disableAutocorrection(true)    //desabilite la autocorreccion
                    .padding(8)
                    .font(.headline)
                    .textFieldStyle(.roundedBorder)
                    .cornerRadius(8)
                    .onChange(of: Id, perform: {value in print("new value \(value)")})
                
                TextField("Correo", text: $Correo)
                    .keyboardType(.default)    //para que me genere el arroba
                    .disableAutocorrection(true)    //desabilite la autocorreccion
                    .padding(8)
                    .font(.headline)
                    .textFieldStyle(.roundedBorder)
                    .cornerRadius(8)
                Menu {
                    Button {
                        
                    }label: {
                        Label("Bogotá", systemImage: "")
                    }
                } label: {
                    Label("Ciudad", systemImage: "")
                }
                .foregroundColor(Color.black)
                .padding(.trailing, 270.0)
                
                TextField("Tipo de adjunto", text: $Tipodato)
                    .keyboardType(.default)    //para que me genere el arroba
                    .disableAutocorrection(true)    //desabilite la autocorreccion
                    .padding(8)
                    .font(.headline)
                    .textFieldStyle(.roundedBorder)
                    .cornerRadius(8)
                    .onChange(of: Id, perform: {value in print("new value \(value)")})
                
            
            Spacer()
            }
            .padding(.horizontal, 20.0)
            Spacer()
            
            VStack {
                Button {
                    
                }label: {
                    Label("Documento", systemImage: "icloud.and.arrow.up")
                        .frame(height: 45)
                }
                .font(.title2)
                .padding(.trailing, 80.0)
                .fontWeight(.semibold)
                .frame(maxWidth: 240, maxHeight: 50)
                .background(Color(red: 0.973, green: 0.247, blue: 0.639))
                .foregroundColor(.white)
                .cornerRadius(10)
                
            Spacer()
            }
            .padding(.trailing, 80.0)
            
            VStack {
                Button("Enviar") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                .font(.title2)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, maxHeight: 50)
                .background(Color(red: 0.973, green: 0.247, blue: 0.639))
                .foregroundColor(.white)
            .cornerRadius(16)
            }
            .padding([.top, .leading, .trailing], 30.0)
        }
        
    }
}
struct DocumentationView_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationView()
    }
}
