//
//  inicio.swift
//  control_navigation
//
//  Created by alumno on 9/29/25.
//
import SwiftUI

struct Pantalla_Inicio: View {
    var body: some View {
        
        VStack{
            Text("Pantalla inicio :)")
            
            NavigationLink{
                Pantalla_Configuracion()
            }
            label: {
                Text("Ir a pantalla configuracion")
            }
        }
    }
}

//link para ir a otra pantalla
#Preview {
    NavigationStack{
        Pantalla_Inicio()
    }
}

