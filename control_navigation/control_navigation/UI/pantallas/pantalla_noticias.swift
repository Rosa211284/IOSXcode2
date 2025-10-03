//
//  pantalla_noticias.swift
//  control_navigation
//
//  Created by alumno on 9/29/25.
//
import SwiftUI

struct Pantalla_Noticias: View {
    
    @State var lista_noticias = noticias
    var body: some View {
        NavigationStack{
            Text("Noticias en el mundo de los gatitos").bold()
            ForEach(lista_noticias){ Noticia in
                NavigationLink{
                    PantallaNota(noticia: Noticia)
                } label: {
                    Encabezado(noticia_presentar: Noticia)
                }
                .buttonStyle(.plain)
            }
        }
    }
}


#Preview {
    NavigationStack{
        Pantalla_Noticias()
    }
}
