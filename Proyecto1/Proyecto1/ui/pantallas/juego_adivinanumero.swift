//
//  juego_adivinanumero.swift
//  Proyecto1
//
//  Created by alumno on 9/5/25.
//

import SwiftUI

enum Estados_juego{
    case esta_jugando
    case ha_ganado
    
    
}
struct JuegoAdvinaNumero: View{
    @State var entradada_usuario: String = ""
    @State var intento_del_usuario = 0
    @State var mostrar_spoiler = false
    @State var leyenda: String = ""
    @State var leyenda_advertencia = false
    @State var lista_jugadores = jugadores_falsos
    @State var  estado_del_juego: Estados_juego = Estados_juego.esta_jugando
    
    
    
    @State var numero_aletaorio = Int.random(in: 1...100)
    
    
    func validar_intento(){
        let numero_usuario = Int(entradada_usuario)
        
        //print("La entrada del usuario es: \(numero_usuario)")
        
        if let numero_usuario = numero_usuario{
            
            leyenda = "La entrada del usuario es: \(numero_usuario)"
            
            if(numero_usuario == numero_aletaorio){
                leyenda = "felicidades ganaste"
                estado_del_juego = .ha_ganado
            }
            else if(numero_usuario > numero_aletaorio){
                leyenda = "El numero que escibiste es  mayor.. "
                
            }
            else{
                leyenda = "El numero que escibiste es es menor"
            }
        }
        
        else{
            print("Es nil")
        }
        
        intento_del_usuario += 1
    }
    
    func loop_juego(){
        switch(estado_del_juego){
        case .esta_jugando:
            validar_intento()
            
        case .ha_ganado:
            intento_del_usuario = 0
            estado_del_juego = .esta_jugando
            numero_aletaorio = Int.random(in: 1...100)
            leyenda = ""
            entradada_usuario = ""
            
        }
    }
    
    
    var body: some View{
        Spacer()
        
        VStack{
            Spoiler(texto: " Numero \(numero_aletaorio)")
            
            Spacer()
            
            Text("Reglas")
                .font(.system(size: 26
                             ))
            Text("Adivina el numero ...")
            
            
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
                if estado_del_juego != .ha_ganado{
                    loop_juego()
                }
            },
                      texto: $entradada_usuario,
                      place_Holder: "Introduce un numero",
                      etiqueta: "Intentar"
            )
            
            if(estado_del_juego == .ha_ganado){
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
}
