//
import SwiftUI

struct PantallaNoticias: View {
    @State var lista_noticias = noticias
    @Environment(controladorGeneral.self) var controlador
    
    var body: some View {
        Text("Noticias").padding().font(.custom("Helvetica Neue", size: 25))
        if(controlador.publicaciones.isEmpty){
            Text("Estamos descargando los datos, por favor espera.")
        }
        else{
            NavigationStack{
                ScrollView{
                    LazyVStack{
                        ForEach(controlador.publicaciones) { publicacion in
                            
                            NavigationLink{
                                PantallaPublicacion(publicacion_actual: publicacion)
                            } label: {
                                Encabezado(publicacion_a_presentar:  publicacion)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    PantallaNoticias()
        .environment(controladorGeneral())
}

