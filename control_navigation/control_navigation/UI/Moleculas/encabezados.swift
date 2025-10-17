//
//  encabezados.swift
//  control_navigation
//
//  Created by alumno on 9/29/25.
//

import SwiftUI

/*struct Encabezado: View {
    var noticia_presentar: Noticia = Noticia(
        titular: "404", cuerpo: "1", imagen: "1", prioridad: .importante
    )
*/

struct Encabezado: View {
    var publicacion_a_presentar: Publicacion = Publicacion(
       userId: 1, id: 11 ,title: " gfdfgdf", body: "fgdfxcx"
        )
    
    var body: some View {
        
       /* HStack(){
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
        }*/
         HStack(){
             /*Image(publicacion_a_presentar.imagen)
                 .resizable()
                 .scaledToFit()
                 .frame(width: 130)
                 .clipShape(Circle())*/
             
             VStack{
                 HStack{
                     Text(publicacion_a_presentar.title).font(.custom("Helvetica Neue", size: 20)).padding(5)
                         .lineLimit(2)
                         .fontWeight(.bold)
                         .foregroundStyle(Color.cyan)
                     Spacer()
                 }
                 
                 HStack{
                     Text(publicacion_a_presentar.body).font(.custom("Helvetica Neue", size: 16)).padding(5)
                         .lineLimit(4)
                     
                 }
             }
         }
        .padding(10)
        .background{
            Rectangle()
                .foregroundStyle(Color.white)
                .cornerRadius(5)
                .border(Color.gray )
             
        }
        .padding(5)
    }
    
}

#Preview{
    Encabezado()
}
