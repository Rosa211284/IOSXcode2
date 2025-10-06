//
//  control_navigationApp.swift
//  control_navigation
//
//  Created by alumno on 9/29/25.
//

import SwiftUI

@main
struct control_navigationApp: App {
    @State var controlador_app = controladorGeneral()
    var body: some Scene {
        WindowGroup {
           Navegacion_Principal()
                .environment(controlador_app)
        }
    }
}



