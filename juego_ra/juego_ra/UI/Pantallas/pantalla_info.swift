//
//  pantalla_info.swift
//  juego_ra
//
//  Created by alumno on 11/19/25.
//
import SwiftUI

// Pantalla principal
struct PantallaPista: View {
    var body: some View {
        NavigationStack {
            VStack {
               
                Image(systemName: "gamecontroller.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .padding()

                Text("Bienvenido a la Búsqueda de Juegos")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                  
                    .padding(.horizontal, 20)

              
                Text("Aquí podrás explorar y encontrar los mejores juegos de aventura. ¡Comienza a jugar ahora!")
                    .font(.body)
                    .foregroundColor(.gray)
                    .padding(.top, 10)
                    .padding(.horizontal, 20)
                    .padding(50)
                
                NavigationLink(destination: Pantalla_principal()) {
                    Text("Presiona para ir a la pista")
                        .padding(20)
                        .border(Color.black)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(20)
                }
                .buttonStyle(.plain)
            }
            .background(Color.white)
            .cornerRadius(12)
            .shadow(radius: 10)
            .padding()
            .background(Color.blue.opacity(0.1))
            .cornerRadius(12)
            .frame(width: 600, height: 700)
        }
    }
}

#Preview {
    PantallaPista()
}
