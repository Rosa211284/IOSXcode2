
import SwiftUI

struct Pantalla_Usuarios: View {
    @Environment(controladorGeneral.self) var controlador
    
    var publicacion_actual: Publicacion
    
    
    var body: some View {
        
        VStack{
            Text("Publicaciones").font(.custom("Helvetica Neue", size: 20)).padding(5) .foregroundStyle(Color.cyan)
            Spacer()
            if let usuario = controlador.usuario{
                Text("Por: \(usuario.name)").font(.custom("Helvetica Neue", size: 15)).padding(10)
            }
            else{
                Text("bo hya usuario para esta publicacion")
            }
            
            ForEach(controlador.comentarios){ comentario in
                Text("\(comentario)").padding(15)
            }
        }
        
        
    }
    
}

#Preview {
    PantallaPublicacion(publicacion_actual: Publicacion(userId: 1, id: 1, title: "404", body: "No encontrado"))
        .environment(controladorGeneral())
}
