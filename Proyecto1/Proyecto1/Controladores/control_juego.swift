import SwiftUI

@Observable

@MainActor
class ControlJuego{
    var estado_actual: Estados_juego = Estados_juego.esta_jugando
    var lista_jugadores = jugadores_falsos
    var numero_secreto = Int.random(in: 1...100)
    var intentos: Int = 0
    
    init(){
        
    }
    
    func validar_intento(_ intento: String) -> String{
        let numero_usuario = Int(intento)
        
        //print("La entrada del usuario es: \(numero_usuario)")
        
        if let numero_usuario = numero_usuario{
            
            //leyenda = "La entrada del usuario es: \(numero_usuario)"
            
            if(numero_usuario == numero_secreto){
                estado_actual = .ha_ganado
                return  "felicidades ganaste"
            }
            else if(numero_usuario > numero_secreto){
                return "El numero que escibiste es  mayor.. "
                
            }
            else{
                return "El numero que escibiste es es menor"
            }
        }
        
        else{
            return "Por favor ingresa un numero"
        }
        
        
        
    }
    
    func reiniciar_juego(){
        intentos = 0
        numero_secreto = Int.random(in: 1...100)
        estado_actual = .esta_jugando
        
    }
   
        
        
        
        
        
        /*
         func loop_juego(){
         switch(estado_actual){
         case .esta_jugando:
         validar_intento()
         
         case .ha_ganado:
         intento_del_usuario = 0
         estado_del_juego = .esta_jugando
         numero_aletaorio = Int.random(in: 1...100)
         leyenda = ""
         entradada_usuario = ""
         
         }
         }*/
        
    }
    
