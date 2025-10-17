

import SwiftUI

struct PantallaPublicacion: View {
    @Environment(controladorGeneral.self) var controlador
    
    var publicacion_actual: Publicacion
    
    
    var body: some View {
        ScrollView{
        VStack(){
            Text("Titulo: \(publicacion_actual.title)").font(.custom("Helvetica Neue", size: 24)).padding(5).multilineTextAlignment(.center)
                .foregroundStyle(Color.cyan)
                .onAppear{
                    controlador.publicacion_seleccionada(publicacion_actual.id)
                }
            
            Text("\(publicacion_actual.body)").font(.custom("Helvetica Neue", size: 18)).padding(5)
            
            //Text("Por: \(publicacion_actual.userId)")
          
            
        }
           
       
        
      
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
}

#Preview {
    PantallaPublicacion(publicacion_actual: Publicacion(userId: 1, id: 1, title: "404", body: "No encontrado"))
        .environment(controladorGeneral())
}

