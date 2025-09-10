import Foundation

struct Jugador: Identifiable{
    let id = UUID()
    
    let nombre: String
    let puntuacion: Int
}

let jugadores_falsos = [
    
    Jugador(nombre: "Kazuto", puntuacion: 85),
    Jugador(nombre: "Miyuki", puntuacion: 72),
    Jugador(nombre: "Rin", puntuacion: 90),
    Jugador(nombre: "Haruto", puntuacion: 65),
    Jugador(nombre: "Aiko", puntuacion: 77),
    Jugador(nombre: "Shiro", puntuacion: 88),
    Jugador(nombre: "Sakura", puntuacion: 95),
    Jugador(nombre: "Kaito", puntuacion: 60),
    Jugador(nombre: "Yumi", puntuacion: 80),
    Jugador(nombre: "Tsubasa", puntuacion: 70),
]

