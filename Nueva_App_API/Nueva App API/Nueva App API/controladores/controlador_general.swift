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
    var datos_pagina_actual : DatosPagina? = nil
    var pagina_actual = 1
    
    var chiste: String? = nil
    static let demon_slayer_api = "https://www.demonslayer-api.com/api/v1"
    static let bromas_api = "https://sv443.net/jokeapi/v2/"
    
    init(){
        Task{
            await descargar_Personajes()
        }
    }
    
    func descargar_Personajes() async {
        guard let pagina_con_datos: Pagina = await ConexionApi.descargar_datos(url:"\(DemonSlayerApp.demon_slayer_api)/characters?page=\(pagina_actual)") else{
            print("No hay ocnexion a internet")
            return
        }
        datos_pagina_actual = pagina_con_datos.datos
        personajes = pagina_con_datos.personajes
    }
    
    func siguiente_pagina(){
        if(pagina_actual > datos_pagina_actual!.totalPages ){
            pagina_actual -= 1
            return
        }
        
        pagina_actual = pagina_actual + 1
   
        
        print("Pagina actual \(pagina_actual)")
        Task{
            await descargar_Personajes()
        }
    }
    
    func descargar_chiste(){
        Task{
            await _descargar_chiste
        }
    }
    
    
    func descargar_Chiste() async {
        guard let chiste: RespuestaJokeApi = await ConexionApi.descargar_datos(url:"\(DemonSlayerApp.bromas_api)/Any?lang=es") else{
            print("No hay conexion a internet")
            return
        }
        self.chiste = chiste
    }
    
    
}
