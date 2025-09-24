//
//  pantalla_Peliculas.swift
//  bocetos_2
//
//  Created by alumno on 9/24/25.
//
import SwiftUI
struct pantalla4: View {
    enum cosas_para_ver: String, CaseIterable, Identifiable{
        case Peliculas
        case Series
        case Contar_Chisme
        case Karaoke
        
        var id: Self{self}
    }
    
    @State var ver_tv : Bool = false
    @State var cosas_tv : cosas_para_ver = .Peliculas
    
    var body: some View {
        VStack{
            Text("Cosas para hacer em una pijamada ")
           
            HStack{
                Spacer()
                Text("Vemos algo en la tv?")
                CajaSeleccionada(checado: $ver_tv, tamaño: 20)
                Spacer()
            }
            
            if(ver_tv){
                HStack{
                    Text("Cual Sabor 7w7")
                    
                    HStack{
                        Picker(selection: $cosas_tv
                               label: Text("Cosas para ver en tv")) {
                            Text("Mantequilla")
                                .tag(Scosas_ver.Mantequilla)
                            Text("Natural")
                                .tag(Saborespalomitas.Natural)
                            Text("Queso")
                                .tag(Saborespalomitas.queso)
                            Text("Caramelo")
                                .tag(Saborespalomitas.caramelo)
                           
                            
                        }
                    }
                }
            }
            
        }
    }

}
   
 


#Preview {
    pantalla4()
        .environment(ControladorBasico())
}


