//
//  ListDetailView.swift
//  RetoSophos
//
//  Created by Almintar Olaya on 9/01/23.
//

import SwiftUI

struct ListDetailView: View {
    
    var doc: Documents
    
    var body: some View {
        VStack{
            doc.imag
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .shadow(color: Color.gray, radius: 5)
            
            
            Text(doc.nombre).font(.largeTitle)
            Text(doc.apellido).font(.title)
            Text(doc.tipod).font(.title)
            Spacer()
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(doc: Documents(id: 1, tipod: "Cedula", nombre: "Almintar", apellido: "Olaya", imag: Image("sueno")))
    }
}
