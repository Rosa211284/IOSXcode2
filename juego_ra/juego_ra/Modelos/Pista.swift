//
//  Pista.swift
//  juego_ra
//
//  Created by alumno on 11/5/25.
//

import CoreLocation

struct Pista: Identifiable{
    let ubicacion: CLLocation
    let id: String
    let cuerpo: CuerpoPista
    
}
