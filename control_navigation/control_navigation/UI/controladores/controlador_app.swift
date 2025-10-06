 import SwiftUI
import Foundation

@Observable
@MainActor
class controladorGeneral{
    let url_base = "https://jsonplaceholder.typicode.com"
    var publicaciones: [Publicacion] = []
    
    func descargar_publicaciones() async {
        guard let publicaciones_descagadas: [Publicacion] = await Servicio_Web().descargar_datos(url: "\(url_base)/posts") else {return}
        
        publicaciones = publicaciones_descagadas
    }
}

