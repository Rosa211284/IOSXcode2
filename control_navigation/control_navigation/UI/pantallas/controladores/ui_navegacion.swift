//
//  ui_navegacion.swift
//  control_navigation
//
//  Created by alumno on 9/29/25.
//
import SwiftUI


enum Pestañas{
    case Configuracion
    case Galeria
    case Noticias
    case Inicio
}

struct Navegacion_Principal : View {
    
    @State var pestaña_actual: Pestañas = .Inicio
    
    var body: some View {
        
        
        TabView(selection: $pestaña_actual){
            Tab("Watch Now", systemImage: "play", value: .Inicio){
                
                Pantalla_Inicio()
                
            }.badge("7w7")
            
            Tab("Noticias", systemImage: "person.fill.turn.left", value: .Noticias){
             
                    PantallaNoticias()
                
            }
            .badge(noticias.count)
            
            
            Tab("Galeria", systemImage: "character.book.closed.fill", value: .Noticias){
                
                    Pantalla_Galeria()
                
            }
            
            Tab("Configuracion", systemImage: "paperclip.circle.fill", value: .Noticias){
                
                    Pantalla_Configuracion()
                
            }
           
        }
        
    }
}

#Preview {
    Navegacion_Principal()
        .environment(controladorGeneral())
}
