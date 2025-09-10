//
//  ContentView.swift
//  Proyecto1
//
//  Created by alumno on 9/3/25.
//

import SwiftUI

struct pantalla: View {
    
    @State var numero: Int = 0
    var body: some View {
        Spacer()
        Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
        }
        
        /*
        HStack{
            
            VStack{
                
                
                Text("Hola mundo")
                    .foregroundStyle(Color.blue)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(15)
                    
                Text("Hola mundo")
                Text("Hola mundo")
                Text("Hola mundo")
                Text("Hola mundo")
                Text("Has pulsado\(numero)")
                
                
            }
            
            VStack{
                
                Text("Hola mundo")
                Text("Hola mundo")
                Text("Hola mundo")
                Text("Hola mundo")
                Text("Hola mundo")
                
            }
        }
        Spacer()
        
        VStack{
            
            Text("Hola mundo")
            Text("Hola mundo")
            Text("Hola mundo")
            Text("Hola mundo")
            Text("Hola mundo")
            
        }
        
        ZStack{
            Text("Hola mundo")
            Text("hello")
            Text("rosa")
            Text("mundo")
            Text("Hoo")
        }
        Spacer()
        */
            .onTapGesture {
                numero += 1
            }
        
    }
    
}

#Preview {
    pantalla()
}
