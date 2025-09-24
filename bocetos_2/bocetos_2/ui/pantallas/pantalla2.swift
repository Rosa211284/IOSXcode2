//
//  pantalla2.swift
//  bocetos_2
//
//  Created by alumno on 9/22/25.
//

import SwiftUI

struct pantalla2: View {
    @Environment(ControladorBasico.self) var controlador
    var body: some View {
        VStack {
          
            Image(systemName: "square.and.arrow.up")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Güelcom a la pantalla dos donde click vale: \(controlador.clicks) ")
        }
        .onTapGesture {
            controlador.clicks += 1 /// clicks.establecer_valor(nuevo_valor)
        }
        .padding()
    }
    }


#Preview {
    pantalla2()
        .environment(ControladorBasico())
}
