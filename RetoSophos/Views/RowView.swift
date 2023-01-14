//
//  RowView.swift
//  RetoSophos
//
//  Created by Almintar Olaya on 9/01/23.
//

import SwiftUI

struct RowView: View {
    
    var doc: Documents
    
    var body: some View {
        HStack{
            doc.imag
                .resizable()
                .frame(width: 40, height: 40)
                .padding(10)
            VStack(alignment: .leading){
                Text(doc.nombre)
                    .font(.title)
                Text(doc.apellido)
                    .font(.subheadline)
               
            }
            Spacer()
        }
    }
}
//doc: Documents(id: 1, name: "Almintar Olaya", data: "fecha, tipo", imag: Image(systemName: "person fill"))

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(doc: Documents(id: 1, tipod: "cedula", nombre: "Almintar", apellido: "Olaya", imag: Image(systemName: "Person.fill"))).previewLayout(.fixed(width: 400, height: 60))
    }
}
