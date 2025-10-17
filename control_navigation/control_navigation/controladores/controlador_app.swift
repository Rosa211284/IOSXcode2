 import SwiftUI
import Foundation

@Observable
@MainActor
class controladorGeneral{
    let url_base = "https://jsonplaceholder.typicode.com"
    var publicaciones: [Publicacion] = []
    var comentarios: [comentario] = []
    var usuario: Usuario? = nil
   var publicacion_actual: Publicacion? = nil
    var comentario_actual: comentario? = nil
    var usuario_actual: Usuario? = nil
    
    init(){
        Task{
            await descargar_publicaciones()
        }
    }
    
    func descargar_publicaciones() async {
        guard let publicaciones_descagadas: [Publicacion] = await Servicio_Web().descargar_datos(url: "\(url_base)/posts") else {return}
        
        publicaciones = publicaciones_descagadas
        do{
            try  await Task.sleep(for: .seconds(30))
        }
        catch{
            
        }
      
    }
   private  func _descargar_comentarios(id_publicacion: Int) async{
        guard let comentarios_descagadas: [comentario] = await Servicio_Web().descargar_datos(url: "\(url_base)/posts/\(id_publicacion)/comments") else {return}
        
        comentarios = comentarios_descagadas
        
    }
    func descargar_comentarios(_ id_publicacion: Int){
        Task{
        await _descargar_comentarios(id_publicacion: id_publicacion)
        }
        
    }
    
  
    
    private  func _descargar_usuario(id_usuario: Int) async{
         guard let usuario_descagado: Usuario = await Servicio_Web().descargar_datos(url: "\(url_base)/users/\(id_usuario)") else {return}
         
        usuario = usuario_descagado
         
     }
    
     func descargar_usuario(_ id_usuario: Int){
         Task{
             await _descargar_usuario(id_usuario: id_usuario)
         }
         
     }
    
    
    func publicacion_seleccionada(_ id: Int){
        for publicacion in publicaciones {
            if publicacion.id == id{
                publicacion_actual = publicacion
                break
            }
        }
        descargar_comentarios(publicacion_actual?.id ?? 0)
        descargar_usuario(publicacion_actual?.userId ?? 0)
    }
    
   
    
    
}

