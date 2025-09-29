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
    
    
    enum cosas_para_comer: String, CaseIterable, Identifiable{
        case Chetos
        case palomitas
        case dulces
        case pan
        case cafe
        
        var id: Self{self}
    }
    
    
    
    @State var ver_tv : Bool = false
    @State var cosas_tv : cosas_para_ver = .Peliculas
    @State var cosas_comida: cosas_para_comer = .pan
    @State var comer : Bool = false
    @State private var selectedColor: Color = .red
    @State var valor_slider = 50.0
    
    var body: some View {
        
        VStack{
            Text("Cosas para hacer en una pijamada ")
                .font(.system(size: 20))
                .padding(20)
            Image("p1")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding(20)
            HStack{
                Spacer()
                Text("Vemos algo en la tv?")
                CajaSeleccionada(checado: $ver_tv, tamaño: 20)
                Spacer()
            }
            
            if(ver_tv){
                HStack{
                    Text("Que vemos 7w7")
                    
                    HStack{
                        Picker(selection: $cosas_tv,
                               label: Text("Que podemos ver")) {
                            Text("peliculas")
                                .tag(cosas_para_ver.Peliculas)
                            Text("Series")
                                .tag(cosas_para_ver.Series)
                            Text("Contar chisme")
                                .tag(cosas_para_ver.Contar_Chisme)
                            Text("Cantar Karaoke")
                                .tag(cosas_para_ver.Karaoke)
                            
                            
                        }
                    }
                }
            }

            /*---------------segunda opcion----------------*/
            VStack{
                HStack{
                    Spacer()
                    Text("que botanas comemos")
                    CajaSeleccionada(checado: $comer, tamaño: 20)
                    Spacer()

                    if(comer){
                        HStack{
                            Text("que podemos comer")
                        HStack{
                            Picker(selection: $cosas_tv,
                                label: Text("Que podemos comer que hace hambre")) {
                            Text("chetos")
                                        .tag(cosas_para_comer.Chetos)
                            Text("Palomitas")
                                        .tag(cosas_para_comer.palomitas)
                            Text("Dulces")
                                        .tag(cosas_para_comer.dulces)
                            Text("Pan")
                                        .tag(cosas_para_comer.pan)
                            Text("Cafe")
                                        .tag(cosas_para_comer.cafe)
                                }
                            }
                        }
                    }
                }
                
            }.padding(25)
        }
        VStack{
            Text("Nos pintamos las uñas chicas?").padding()
            Text("Que color escogemos hoy?")
            ColorPicker("Color picker", selection: $selectedColor).padding(10)
        }.padding(20)
        
        VStack{
            Text("Que calificacion le darias a ... luis miguel")
            Text("\(valor_slider)")
            Slider(value: $valor_slider, in: 0...100)
        }
    }
}

      

#Preview {
    pantalla4()
        .environment(ControladorBasico())
}


