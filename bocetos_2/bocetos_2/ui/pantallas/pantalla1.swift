//
//  pantalla1.swift
//  bocetos_2
//
//  Created by alumno on 9/22/25.
//

import SwiftUI

struct pantalla1: View {
    @Environment(ControladorBasico.self) var controlador
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Ola mundo, Cantidad de clicks es: \(controlador.clicks) ")
        }
        .onTapGesture {
            controlador.clicks += 1 /// clicks.establecer_valor(nuevo_valor)
        }
        .padding()
    }
}

#Preview {
    pantalla1()
        .environment(ControladorBasico())
}


///si no existiera @State, la pagina seria muy pesada. Permite que el estado de la app pueda cambiar y "destruirse" constantemente
