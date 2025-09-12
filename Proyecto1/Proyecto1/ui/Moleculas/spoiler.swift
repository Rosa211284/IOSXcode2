//
//  spoiler.swift
import SwiftUI

struct Spoiler: View{
    @State var mostrar: Bool = false
    var texto = ""
    
    var body: some View{
        Text("Spoiler\(texto)")
            .onTapGesture { // cada vez que se haga un tap cambia de true a false y viseversa
                mostrar = !mostrar
            }
            .foregroundStyle((mostrar) ? Color.white: Color.blue)
            .padding([.top], 15)
        
    }
    
}

#Preview {
    Spoiler(texto: "hola mundo")
}

