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
        ForEach(lista_noticias){ Noticia in
            NavigationLink{
                
            } label: {
                Encabezado(noticia_presentar: Noticia)
            }
        
            
        }
    }
}


#Preview {
    NavigationStack{
        Pantalla_Noticias()}
}
