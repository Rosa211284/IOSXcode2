//
//  Botonexto.swift
//  Proyecto1
//
//  Created by alumno on 9/8/25.
//
import SwiftUI

struct Botonexto: View{
    var accion: () -> Void
    @Binding var texto: String
    var place_Holder: String = "Escribe aqui"
    var etiqueta: String = "no hay etiqueta "
    
    var body: some View{
    
        HStack{
            TextField(place_Holder, text: $texto)
                .frame(width: 250)
                .multilineTextAlignment(.center)
            
            
            Button(action: accion){
                Text(etiqueta)
                Image(systemName: "person.fill.turn.right")
            }
        }
    }
}

#Preview {
   @Previewable @State var texto = ""
    Botonexto( accion: { print(" ")}, texto: $texto)
}
