//
//  cuerpos_pistas.swift
//  juego_ra
//
//  Created by alumno on 11/5/25.
//


enum Tipodepista{
    case informacion
    case interactiva
}

protocol CuerpoPista{
    var tipo: Tipodepista {get set}
    var informacion : String {get set}
}

struct PistaInformacion: CuerpoPista{
    var tipo = Tipodepista.informacion
    
    var informacion: String
}
