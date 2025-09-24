//
//  bocetos_2App.swift
//  bocetos_2
//
//  Created by alumno on 9/22/25.
//

import SwiftUI

@main
struct bocetos_2App: App {
    @State var controlador = ControladorBasico()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(controlador)///.enviroment permite que se usen los elementos en diversas partes dentro del content view, es como decirle que tiene acceso a este recurso en especifico
        }
    }
}
