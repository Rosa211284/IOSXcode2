//
//  pantalla_noticias.swift
//  control_navigation
//
//  Created by alumno on 9/29/25.
//
import SwiftUI

struct Pantalla_Noticias: View {
    
    @State var lista_noticias = noticias
    @Environment(controladorGeneral.self) var controlador
    
    var body: some View {
        if(controlador.publicaciones.isEmpty){
            Text("Estamos descargando los datos por favor espera")
        }
        else{
            NavigationStack{
                ScrollView{
                    LazyVStack{
                        ForEach(controlador.publicaciones) { publicacion in
                            
                            NavigationLink{
                                PantallaPublicacion(publicacion_actual: publicacion)
                            } label: {
                                Encabezado(publicacion_a_presentar: publicacion)
                            }
                            .buttonStyle(.plain)
                            
                        }
                    }
                }
            }.onAppear {
                if controlador.publicaciones.isEmpty{
                    Task{
                        await controlador.descargar_publicaciones()
                    }
                }
            }
        }
    }
    }


#Preview {
    NavigationStack{
        Pantalla_Noticias()
            .environment(controladorGeneral())
    }
}


//Text("Noticias en el mundo de los gatitos").bold()
/*ForEach(lista_noticias){ Noticia in
 NavigationLink{
 PantallaNota(noticia: Noticia)
 } label: {
 Encabezado(noticia_presentar: Noticia)
 }
 .buttonStyle(.plain)
 }
 }.onAppear{
 if(controlador.publicaciones.isEmpty){
 Task{
 await  controlador.descargar_publicaciones()
 }
 }
 }*/

