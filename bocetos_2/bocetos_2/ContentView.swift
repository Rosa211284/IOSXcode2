//
//  ContentView.swift
//  bocetos_2
//
//  Created by alumno on 9/22/25.
//

import SwiftUI
enum Pantallas {
    case pantalla_1
    case pantalla_2
    case pantalla_3
}

struct ContentView: View {
    @State var pantalla_actual: Pantallas = .pantalla_1
var body: some View {
    Text ("Cambiar pantalla")
        .onTapGesture {
            if pantalla_actual == .pantalla_1 {
                pantalla_actual = .pantalla_2
            }
            else {
                pantalla_actual = .pantalla_1
            }
        }
       switch(pantalla_actual){ ///permite dibujar entre las dos pantallas disponibles, es decir, a tocar "cambiar pantalla" llamamos a las pantallas, donde swift  las recontruye y regresa a 0 el contador. Es de manera automatica, contructor y destructor
        case .pantalla_1:
         pantalla1() ///siempre inicializa en 0 cada vez que se llama 
           
        case .pantalla_2:
           pantalla2()
           
        case .pantalla_3:
            pantalla3()
            
        }
    }
}

#Preview {
    ContentView()
        .environment(ControladorBasico())
}
