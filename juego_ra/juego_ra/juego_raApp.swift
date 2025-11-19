

import SwiftUI

@main
struct juego_raApp: App {
    @State var controlador_juego = ControladorJuego()
    
    var body: some Scene {
        WindowGroup {
            
            /*Pantalla_principal()
                .environment(controlador_juego)*/
            PantallaPista()
        }
    }
}
