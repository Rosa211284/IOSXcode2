//
//  contactos.swift
//  control_navigation
//
//  Created by alumno on 9/29/25.
//
import Foundation
enum Prioridades{
    case normal
    case importante
    case Sociales
}

struct Noticia: Identifiable{
    var id = UUID()
    
    var titular : String
    var cuerpo : String
    var imagen: String
    var prioridad: Prioridades
    
    init(titular: String, cuerpo: String, imagen: String, prioridad:Prioridades) {
        self.titular = titular
        self.cuerpo = cuerpo
        self.imagen = imagen
        self.prioridad = prioridad
        
    }
}
//SEccion de placeholder
let noticias = [
            Noticia(
                titular: "Nuevo descubrimiento en la ciencia",
                cuerpo: "Un equipo de científicos ha realizado un descubrimiento revolucionario que cambiará el curso de la medicina.",
                imagen: "ciencia.jpg",
                prioridad: .importante
            ),
            Noticia(
                titular: "Fiesta de pijamas en el barrio",
                cuerpo: "Este fin de semana se celebrará una gran fiesta de pijamas en el centro comunitario con actividades para todas las edades.",
                imagen: "pijamada.jpg",
                prioridad: .Sociales
            ),
            Noticia(
                titular: "Promoción de temporada en la tienda",
                cuerpo: "La tienda local ofrece descuentos de hasta el 50% en productos seleccionados durante esta temporada.",
                imagen: "promocion.jpg",
                prioridad: .normal
            )
        ]
        







