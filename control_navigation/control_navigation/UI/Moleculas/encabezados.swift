//
//  encabezados.swift
//  control_navigation
//
//  Created by alumno on 9/29/25.
//

import SwiftUI

struct Encabezado: View {
    var noticia_presentar: Noticia = Noticia(
        titular: "404", cuerpo: "no eoncontrado", imagen: "imagen", prioridad: .importante
    )
    
    var body: some View {
        HStack(spacing: 10){
            Image(systemName: "list.bullet.rectangle")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
            
            VStack{
                HStack{
                    Text(noticia_presentar.titular)
                    Spacer()
                }
                
                HStack{
                    Text(noticia_presentar.cuerpo)
                    Spacer()
                }
            }
        }
    }
    
}

#Preview{
    Encabezado()
}
