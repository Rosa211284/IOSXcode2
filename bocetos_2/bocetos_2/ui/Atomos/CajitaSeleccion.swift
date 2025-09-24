//
//  CajitaSeleccion.swift
//  bocetos_2
//
//  Created by alumno on 9/24/25.
//

import SwiftUI
struct CajaSeleccionada: View {
    @Binding var checado: Bool
    var tamaño: CGFloat = 40
    var body: some View {
        
        ZStack{
            Rectangle().frame(width: tamaño, height: tamaño)
                .cornerRadius(5)
                .foregroundStyle(checado ? .cyan: .gray)
               
            Image(systemName: "checkmark.arrow.trianglehead.counterclockwise")
                .resizable()
                .scaledToFit()
                //.frame(width: tamaño - 10)
                .frame(width: tamaño - (tamaño * 0.20))
                .foregroundStyle(checado ? .white: .gray)
        }
        .onTapGesture {
            checado.toggle()
        }
        
       
    }
}
#Preview {
    @Previewable @State var esta_checado: Bool = true
    CajaSeleccionada(checado: $esta_checado)
}
