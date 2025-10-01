//
//  encabezados.swift
//  control_navigation
//
//  Created by alumno on 9/29/25.
//

import SwiftUI

struct Encabezado: View {
    var noticia_presentar: Noticia = Noticia(
        titular: "404", cuerpo: "gatito malvado gatito encarcelado", imagen: "1", prioridad: .importante
    )
    
    var body: some View {
        
        HStack(){
            Image(noticia_presentar.imagen)
                .resizable()
                .scaledToFit()
                .frame(width: 130)
                .clipShape(Circle())
            
            VStack{
                HStack{
                    Text(noticia_presentar.titular)
                        .lineLimit(2)
                        .fontWeight(.bold)
                        .foregroundStyle(Color.cyan)
                    Spacer()
                }
                
                HStack{
                    Text(noticia_presentar.cuerpo)
                        .lineLimit(3)
                    Spacer()
                }
            }
        }
        .padding(5)
        .background{
            Rectangle()
                .foregroundStyle(Color.gray)
                .cornerRadius(5)
        }
       
        .padding(5)
    }
    
}

#Preview{
    Encabezado()
}
