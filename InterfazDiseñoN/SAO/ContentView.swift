//
//  ContentView.swift
//  SAO
//
//  Created by alumno on 9/17/25.
//

import SwiftUI

struct ContentView: View {
    let numberOfCircles = 13 // Número de círculos alrededor de la imagen
    let radius: CGFloat = 180
    let iconSize: CGFloat = 30 // Tamaño de los iconos dentro de los círculos
    
    let images: [String] = [
            "star.fill", "heart.fill", "moon.fill", "flame.fill",
            "bolt.fill", "circle.fill", "cloud.fill", "sun.max.fill"
        ]
    
    var body: some View {
        VStack {
            Text("Kirito").font(.system(size: 30)
                )
            Text("________________________________")
               
            ZStack() {
                    Image("humano")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width:130)
                       
                            
                            // Círculos que giran alrededor
                ForEach(0..<numberOfCircles, id: \.self) { index in
                    
                    ZStack{
                        Circle()
                            .frame(width: 40)
                            .foregroundColor(.white)
                            .overlay(.stroke(Color.black, lineWidth: 2))
                            .offset(x: radius * cos(CGFloat(index) * 2 * .pi / CGFloat(numberOfCircles)),
                                    y: radius * sin(CGFloat(index) * 2 * .pi / CGFloat(numberOfCircles)))
                    }
                }
            }
                .frame(width: 400, height: 400) // Tamaño del contenedor
    }
        .padding(15)
        
    HStack(){
        Spacer()
                Image(systemName: "xmark.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40)
                    .padding(5)
        
                VStack(alignment: .leading){
                    
                    Text("Ataca con dos espadas al mismo tiempo")
                    Text("Habilidades que puedes hacer.")
                    Text("Bonificación de velocidad de ataque 1,80")
                    Text("Bonificación de defensa de armas 1,50")
                    Text("Bonificación de enfriamiento 1.20")
                    
                   
                }.padding(30)
              
              
                
                
            } .background(Color.gray)
           
           
          
            
        }
        
            
    }



#Preview {
    ContentView()
}
