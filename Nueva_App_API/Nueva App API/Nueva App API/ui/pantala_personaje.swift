
import SwiftUI

struct Pantallapersonajes: View {
    @Environment(DemonSlayerApp.self) var controlador
    
    var body: some View {
        Text("Personajes").font(.title)
        
        ScrollView{
            ForEach(controlador.personajes){
                personaje in
                HStack{
                    AsyncImage(url: URL(string: personaje.img)) { image in
                        image.resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                            .background(Color.white)
                            .border(Color.black).cornerRadius(15)
                            
                    } placeholder: {
                        ProgressView()
                    }
                    Text("\(personaje.name)").padding()
                    
                }.frame(width: 320, height: 160).padding().background(Color.cyan).border(Color.black).cornerRadius(15)
                
            }.padding(10)
            Text("Siguiente pagina")
                .onTapGesture {
                    controlador.siguiente_pagina()
                }
        }
    }
}

#Preview {
    Pantallapersonajes()
        .environment(DemonSlayerApp())
}
