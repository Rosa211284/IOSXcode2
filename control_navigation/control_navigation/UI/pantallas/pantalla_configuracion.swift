//
//  pantalla_configuracion.swift
//  control_navigation
//
//  Created by alumno on 9/29/25.
//



import SwiftUI


struct Pantalla_Configuracion: View {
    
    @State private var speed = 50.00
    @State private var isEditing = false
    
    var body: some View {
        HStack{
            Text("Configuracion").font(.custom("Helvetica Neue", size: 20))
            Image(systemName: "arrowshape.up.circle").resizable().frame(width: 20, height: 20)
        }
        
        HStack{
            Image(systemName: "volume.2").resizable().frame(width: 10, height: 20)
            
            Slider(
                value: $speed,
                in: 0...100,
                step: 5
            ) {
                Text("Speed")
            } minimumValueLabel: {
                Text("")
            } maximumValueLabel: {
                Text("")
            } onEditingChanged: { editing in
                isEditing = editing
            }
            
        }.padding()
     
        VStack{
            Text("Modo").font(.custom("Helvetica Neue", size: 20))
            HStack{
                Image(systemName: "volume.slash").resizable().frame(width: 30, height: 30)
                Spacer()
                Image(systemName: "volume.zzz.fill").resizable().frame(width: 30, height: 30)
                Spacer()
                Image(systemName: "volume.2").resizable().frame(width: 30, height: 30)
            
                
            }.padding()
        }
     
        
    }
}
   
    


    


    #Preview {
        Pantalla_Configuracion()
    }

