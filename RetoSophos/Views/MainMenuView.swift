//
//  MainMenuView.swift
//  RetoSophos
//
//  Created by Almintar Olaya on 22/12/22.
//

import SwiftUI

struct MainMenuView: View {
    var body: some View {
        VStack {
            Image("Plantilla_Corporativa2022-2")
                .resizable()
                .scaledToFit()
                .overlay(Text("Bienvenido")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding([.top, .leading], 30.0)
                    ,alignment: .topLeading)
                .overlay(Text("Estas son las opciones que tenemos para ti").font(.title3).fontWeight(.medium).foregroundColor(Color.white)  .frame(width: 230, height: 100).padding([.leading, .bottom], 40.0),alignment: .bottomLeading)
            Spacer()
            VStack {
                    HStack {
                            Image(systemName: "doc.text")
                                .padding(.leading, 20.0)
                                .padding(.top, 30.0)
                                .font(.title)
                                .frame(width: 50, height: 25)
                                .foregroundColor(Color(red: 0.973, green: 0.247, blue: 0.639))
                            Text("Enviar documentos")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.top, 30.0)
                                .padding(.trailing, 90.0)
                                .frame(height: 50)
                                .frame(maxWidth: .infinity)
                                .foregroundColor(Color(red: 0.973, green: 0.247, blue: 0.639))
                        }
                
                ZStack {
                    
                    Button {
                        
                            NavigationLink("", destination: DocumentationView())
                        } label: {
                            Text("Ingresar")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.bottom, 5.0)
                                .padding(.leading, 200.0)
                                .frame(height: 50)
                                .frame(maxWidth: .infinity)
                                .foregroundColor(Color(red: 0.973, green: 0.247, blue: 0.639))
                            Image(systemName: "arrow.right")
                                .padding(.bottom, 5.0)
                                .padding(.trailing, 30.0)
                                .font(.title)
                                .frame(width: 5, height: 35)
                                .padding(.all, 20)
                                .foregroundColor(Color(red: 0.973, green: 0.247, blue: 0.639))
                            
                    }
                }
                
            }
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(red: 0.973, green: 0.247, blue: 0.639), lineWidth: 2))
            .frame(maxWidth: 350, maxHeight: 120)
            Spacer()
            VStack {
                    HStack {
                            Image(systemName: "doc.text.magnifyingglass")
                                .padding(.leading, 20.0)
                                .padding(.top, 30.0)
                                .font(.title)
                                .frame(width: 50, height: 25)
                                .foregroundColor(Color(red: 0.471, green: 0.0, blue: 0.992))
                            Text("Ver documentos")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.top, 30.0)
                                .padding(.trailing, 120.0)
                                .frame(height: 50)
                                .frame(maxWidth: .infinity)
                                .foregroundColor(Color(red: 0.471, green: 0.0, blue: 0.992))
                        }
                ZStack {
                    Button {
                            
                        } label: {
                            Text("Ingresar")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.bottom, 5.0)
                                .padding(.leading, 200.0)
                                .frame(height: 50)
                                .frame(maxWidth: .infinity)
                                .foregroundColor(Color(red: 0.471, green: 0.0, blue: 0.992))
                            Image(systemName: "arrow.right")
                                .padding(.bottom, 5.0)
                                .padding(.trailing, 30.0)
                                .font(.title)
                                .frame(width: 5, height: 35)
                                .padding(.all, 20)
                                .foregroundColor(Color(red: 0.471, green: 0.0, blue: 0.992))
                            
                    }
                }
                
            }
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(red: 0.471, green: 0.0, blue: 0.992), lineWidth: 2))
            .frame(maxWidth: 350, maxHeight: 120)
            Spacer()
            
            VStack {
                    HStack {
                            Image(systemName: "mappin.and.ellipse")
                                .padding(.leading, 20.0)
                                .padding(.top, 30.0)
                                .font(.title)
                                .frame(width: 50, height: 25)
                                .foregroundColor(Color(red: 0.016, green: 0.325, blue: 0.396))
                            Text("Oficinas")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.top, 30.0)
                                .padding(.trailing, 200.0)
                                .frame(height: 50)
                                .frame(maxWidth: .infinity)
                                .foregroundColor(Color(red: 0.016, green: 0.325, blue: 0.396))
                        }
                ZStack {
                    Button {
                            
                        } label: {
                            Text("Ingresar")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.bottom, 5.0)
                                .padding(.leading, 200.0)
                                .frame(height: 50)
                                .frame(maxWidth: .infinity)
                                .foregroundColor(Color(red: 0.016, green: 0.325, blue: 0.396))
                            Image(systemName: "arrow.right")
                                .padding(.bottom, 5.0)
                                .padding(.trailing, 30.0)
                                .font(.title)
                                .frame(width: 5, height: 35)
                                .padding(.all, 20)
                                .foregroundColor(Color(red: 0.016, green: 0.325, blue: 0.396))
                            
                    }
                }
                
            }
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(red: 0.016, green: 0.325, blue: 0.396), lineWidth: 2))
            .frame(maxWidth: 350, maxHeight: 120)
            Spacer()
            
        }
        
    }
}

struct MainMenuView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuView()
    }
}
