//
//  DocumentsView.swift
//  RetoSophos
//
//  Created by Almintar Olaya on 2/01/23.
//

import SwiftUI

private let docus = [Documents(id: 1, tipod: "Incapacidad", nombre: "Almintar", apellido: "Olaya", imag: Image("sueno")),
                                   Documents(id: 2, tipod: "Incapacidad", nombre: "Charles", apellido: "Bukowski", imag: Image("montana")),
                                   Documents(id: 3, tipod: "Resume", nombre: "Oscar", apellido: "Wilde", imag: Image("girasoles")),
                                   Documents(id: 4, tipod: "Trabajo", nombre: "Julio", apellido: "Verne", imag: Image("space")),
                                   Documents(id: 5, tipod: "Libro", nombre: "Fernando", apellido: "Vallejo", imag: Image("selva"))]
                                             
struct DocumentsView: View {
    var body: some View {
        NavigationView {
            List(docus, id: \.id) { documents in
                NavigationLink (destination: ListDetailView (doc: documents)){
                    RowView(doc: documents)
                }
            }
            .navigationTitle("Documentos")
        }
        
    }
}

struct DocumentsView_Previews: PreviewProvider {
    static var previews: some View {
        DocumentsView()
    }
}
