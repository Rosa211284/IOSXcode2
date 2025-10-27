//
//  Untitled.swift
//  Nueva App API
//
//  Created by alumno on 10/27/25.
//

import SwiftUI

struct Tarjeta_Personaje: View {
    var personaje: Personaje
    
    var body: some View {
        AsyncImage(url: URL(string: personaje.img)){ estado in
            switch(estado){
            case .empty:
                Text("se esta descargando la imagen")
            case .success(let imagen):
                imagen
                    .resizable()
                    .scaledToFit()
                    .padding(5)
            case .failure(_):
                Text("parece que no tienes internet")
            }
        }.frame(width: 200, height: 200).background(Color.white).border(Color.black).cornerRadius(15).padding(5)
        Text("Hola soy: \(personaje.name)").padding(5)
    }

    
    

}

#Preview {
    Tarjeta_Personaje(personaje:Personaje(id: 1, name: "Tanjiro", age: 14, gender: "hombre", race: "", description: "", img: "https://images.prod.boo.dating/database/profiles/167972562349484818bab0eb1f93df59cd8bc43f8623c.jpg", affiliation_id: 1, arc_id: 1, quote: ""))
}
