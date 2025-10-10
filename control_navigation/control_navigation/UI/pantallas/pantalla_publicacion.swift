

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
        
        Text("Por: \(publicacion_actual.userId)")
        Text("usuario \(controlador.usuarios.name)")
        Text("usuario\(usuario_actual.email)")
        
        ScrollView{
            VStack{
                ForEach(controlador.comentarios){ comentario in
                    Text("\(comentario)")
                }
            }
        }
    }
}

#Preview {
    PantallaPublicacion(publicacion_actual: Publicacion(userId: 1, id: 1, title: "404", body: "No encontrado"))
        .environment(controladorGeneral())
}

