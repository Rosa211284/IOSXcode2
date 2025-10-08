//
//  pantalla_publicacion.swift
//  control_navigation
//
//  Created by alumno on 10/8/25.
//
import SwiftUI
struct PantallaPublicacion: View {
    @Environment(controladorGeneral.self) var controlador
    var publicacion_actual: Publicacion

    var body: some View {
        Text("Titulo: \(publicacion_actual.title)")
            .onAppear{
                controlador.publicacion_seleccionada(publicacion_actual.id)
            }
        Text("\(publicacion_actual.body)")
        Text("\(publicacion_actual.userId)")
        
        ScrollView{
            VStack{
                ForEach(controlador.comentarios){comentario in
                    Text("\(comentario)")
                }
            }.padding(25)
        }/*.onAppear{
            if controlador.comentarios.isEmpty{
                Task{
                    await controlador.descargar_comentarios(id_publicacion: publicacion_actual.id)
                    
                }
            }
        }
        .onDisappear{
            if !controlador.comentarios.isEmpty{
                controlador.comentarios = []
            }
        }*/
    }
}
#Preview {
    PantallaPublicacion(publicacion_actual: Publicacion(userId: 1, id: 1, title: "404", body: "no encontrado"))
        .environment(controladorGeneral())
}
