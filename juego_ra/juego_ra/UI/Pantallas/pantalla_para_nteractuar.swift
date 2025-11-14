//
//  pantalla_para_nteractuar.swift
//  juego_ra
//
//  Created by alumno on 11/10/25.
//
import SwiftUI
struct PantallaPistaInteractuable: View {
    var cuerpo_pista : PistaInteractuable
    @Environment(ControladorJuego.self) var controlador
    
    var body: some View {
        
        Text(cuerpo_pista.informacion)
        
        ForEach(cuerpo_pista.interacciones){
            boton in
            NavigationLink{
                SelectorPantallaPista(pista_Id: boton.conecta_con_pista)
            } label: {
                Text(boton.mensaje)
            }
            
        }
        
    }
        
   
}

#Preview {
    PantallaPistaInteractuable(cuerpo_pista:
        PistaInteractuable(informacion: "hi",
        interacciones: [
            boton(mensaje: "mensaje del boton",
                  conecta_con_pista: "Pista_1")
        ]
                           
                          ))
    .environment(ControladorJuego())
}

