//
//  controlador_general.swift
//  Nueva App API
//
//  Created by alumno on 10/20/25.
//

import SwiftUI
import Foundation

@Observable
@MainActor
class DemonSlayerApp{
  
    var personajes = [Personaje]()
    var pagina_actual = 1
    
    init() {
     
    descargar_Personajes()
    }
    
    func descargar_Personajes() async{
        guard let pagina_con_datos: Pagina = ConexionApi.descargar_datos(url: "")
    }
}
