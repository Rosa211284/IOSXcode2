//
//  Proyecto1App.swift
//  Proyecto1
//
//  Created by alumno on 9/3/25.
//

import SwiftUI

@main
struct Proyecto1App: App {
    @State var controlador_de_juego = ControlJuego()
    var body: some Scene {
        WindowGroup {
            pantalla()
                .environment(controlador_de_juego)
        }
    }
}
