//
//  pantalla_para_nteractuar.swift
//  juego_ra
//
//  Created by alumno on 11/10/25.
//
import SwiftUI
struct PantallaPistaInteractuable: View {
    var cuerpo_pista : PistaInteractuable
    var body: some View {
   
        Text(cuerpo_pista.informacion)
        
        ForEach(cuerpo_pista.interacciones){
            boton in
            VStack{
                Text(boton.mensaje)
                    .onTapGesture {
                        print("ir a la pista\(boton.conecta_con_pista)")
                    }
            }
        }
        
    }
}
