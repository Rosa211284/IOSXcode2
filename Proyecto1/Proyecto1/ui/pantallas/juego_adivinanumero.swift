//
//  juego_adivinanumero.swift
//  Proyecto1
//
//  Created by alumno on 9/5/25.
//

import SwiftUI

struct JuegoAdvinaNumero: View{
    @State var entradada_usuario: String = ""
    @State var mostrar_spoiler = false
    @State var leyenda: String = ""
    @State var leyenda_advertencia = false
    @State var  estado_del_juego: Estados_juego = Estados_juego.esta_jugando
    @Environment(ControlJuego.self) var juego
    
    var body: some View{
        Spacer()
        
        VStack{
            Spoiler(texto: " Numero \(juego.numero_secreto)")
            
            Spacer()
            
            Text("Reglas")
                .font(.system(size: 26
                             ))
            Text("Adivina el numero ...")
            Text("Cantidad de Intentos: \(juego.intentos)..")
            
            
            Spacer()
            //Introducir texto
            /*HStack{
             TextField("Introduce un numero porfavor", text: $entradada_usuario)
             .frame(width: 250)
             .multilineTextAlignment(.center)
             
             
             Button(action:{loop_juego()}){
             Text("Intentar")
             Image(systemName: "person.fill.turn.right")
             }}*/
            
            //---------funcion de arriba -------------------------
            Botonexto(accion:{
                if juego.estado_actual != .ha_ganado{
                    leyenda = juego.validar_intento(entradada_usuario)
                   // loop_juego()
                    juego.validar_intento(entradada_usuario)
                }
            },
                      texto: $entradada_usuario,
                      place_Holder: "Introduce un numero",
                      etiqueta: "Intentar"
            )
            
            if(juego.estado_actual == .ha_ganado){
                Button(action:{
                    estado_del_juego = .esta_jugando
                }){
                    Text("Reiniciar juego")
                }
            }
            Leyenda(peligro: $leyenda_advertencia, texto:  leyenda)
            
            Spacer()
            
            
            VStack{
                RenglonColumna2(columna_1: "Nombre", columna_2: "Puntuacion")
               
                
                ForEach(jugadores_falsos) {jugador in
                    RenglonColumna2(columna_1: jugador.nombre, columna_2: "\(jugador.puntuacion)")
                    
                }
                
                
            }
        }
    }
}
//#preview para completar la preview
#Preview {
    
    JuegoAdvinaNumero()
        .environment(ControlJuego())
}
