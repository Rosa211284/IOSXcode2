//
//  inicio.swift
//  control_navigation
//
//  Created by alumno on 9/29/25.
//
import SwiftUI

struct Pantalla_Inicio: View {
    var body: some View {
        
        VStack(spacing: 30){
            
            Text("Pantalla de Inicio ")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(.cyan)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
            Text("Bienvenido Usuario")
            
            Image("4")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fit)
                .frame(maxWidth: 250 )
        
            

            NavigationLink{
                PantallaNoticias()}
            label: {
                Text("Nombre:           ").padding(5) .foregroundStyle(Color.cyan)
                Image(systemName: "paperplane.circle").resizable().frame(width: 30, height: 30) .foregroundStyle(Color.cyan)
                  
            }.padding().background(Color.black)
                .cornerRadius(5)
            
            NavigationLink{
                Pantalla_Configuracion()}
            label: {
                Text("Apellido:            ").padding(5) .foregroundStyle(Color.cyan)
                Image(systemName: "books.vertical").resizable().frame(width: 30, height: 30) .foregroundStyle(Color.cyan)
            }.padding().background(Color.black)
                .cornerRadius(5)
            
            NavigationLink{
                Pantalla_Galeria()}
            label: {
                Text("Archivos:           ").padding(5) .foregroundStyle(Color.cyan)
                Image(systemName: "paperclip").resizable().frame(width: 30, height: 30) .foregroundStyle(Color.cyan)
            }.padding().background(Color.black)
                .cornerRadius(5)
        }
    }
}




#Preview {
    NavigationStack{
        Pantalla_Inicio()
    }
}

