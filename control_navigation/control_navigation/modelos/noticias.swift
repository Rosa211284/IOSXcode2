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
//Seccion de placeholder
let noticias = [
    Noticia(
        titular: "Nuevo descubrimiento en el mundo de los gatitos",
        cuerpo: "Un equipo de veterinarios ha descubierto una nueva raza de gatitos con una habilidad única para hacer trucos.",
        imagen: "1",
        prioridad: .importante
    ),
    Noticia(
        titular: "Fiesta de gatitos en el barrio",
        cuerpo: "Este fin de semana, los amantes de los felinos se reunirán para una fiesta de gatitos con juegos y premios para los felinos más adorables.",
        imagen: "2",
        prioridad: .Sociales
    ),
    Noticia(
        titular: "Tienda de gatitos ofrece descuentos",
        cuerpo: "La tienda de mascotas local ha lanzado una promoción especial con descuentos de hasta el 50% en productos para gatitos.",
        imagen: "3",
        prioridad: .normal
    ),
    Noticia(
        titular: "Gatitos y su impacto en la salud emocional",
        cuerpo: "Investigadores han encontrado que interactuar con gatitos reduce el estrés y mejora el bienestar emocional de las personas.",
        imagen: "4",
        prioridad: .importante
    ),
    Noticia(
        titular: "Festival de cine de gatitos",
        cuerpo: "Este mes se llevará a cabo el esperado Festival de Cine de Gatitos, donde se proyectarán los cortometrajes más adorables sobre felinos.",
        imagen: "5",
        prioridad: .normal
    ),
    Noticia(
        titular: "Inauguración de una nueva guardería para gatitos",
        cuerpo: "El próximo sábado se inaugurará una moderna guardería para gatitos, con áreas de juego y cuidados especiales para felinos de todas las edades.",
        imagen: "6",
        prioridad: .Sociales
    ),
    Noticia(
        titular: "Convocatoria para adopción de gatitos rescatados",
        cuerpo: "Un refugio local ha abierto su convocatoria para la adopción de gatitos rescatados que buscan un hogar lleno de amor.",
        imagen: "7",
        prioridad: .Sociales
    ),
    Noticia(
        titular: "Reapertura del centro de adopción de gatitos",
        cuerpo: "Después de un año de reformas, el Centro de Adopción de Gatitos reabre sus puertas con más espacio y confort para los felinos.",
        imagen: "8",
        prioridad: .importante
    )
        ]
        







