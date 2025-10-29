
import SwiftUI

struct Pantallapersonajes: View {
    @Environment(DemonSlayerApp.self) var controlador
    
    var body: some View {
        Spacer()
        Text("Personajes").font(.title)
        
        NavigationStack{
            ScrollView{
                ForEach(controlador.personajes){
                    personaje in
                    NavigationLink{
                        TarjetaPersonaje(personaje: personaje)
                    }
                    label: {
                        Tarjeta_Personaje(personaje: personaje)
                    }.frame(width: 390, height: 220).buttonStyle(.plain).background(Color.cyan)
                        .border(Color.black).cornerRadius(15)
                    
                    
                    /* HStack{
                     AsyncImage(url: URL(string: personaje.img)) { image in
                     image.resizable()
                     .scaledToFit()
                     .frame(width: 150, height: 150)
                     .background(Color.white)
                     .border(Color.black).cornerRadius(15)
                     
                     }placeholder: {
                     ProgressView()
                     }
                     Text("\(personaje.name)").padding()
                     
                     }.frame(width: 320, height: 160).padding().background(Color.cyan).border(Color.black).cornerRadius(15)*/
                    
                }.padding(10)
                
                Text("Siguiente pagina")
                    .onTapGesture {
                        controlador.siguiente_pagina()
                    }.padding(15).background(Color.blue) .border(Color.black).cornerRadius(15)
            }
        }
    }
}
    

#Preview {
    Pantallapersonajes()
        .environment(DemonSlayerApp())
}
