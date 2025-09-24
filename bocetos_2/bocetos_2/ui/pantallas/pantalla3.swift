//
//  pantalla3.swift
//  bocetos_2
//
//  Created by alumno on 9/22/25.
//

import SwiftUI

enum Saborespalomitas: String, CaseIterable, Identifiable{
    case Mantequilla
    case Natural
    case queso
    case Doritos
    case caramelo
    
    var id: Self{self}
}

struct pantalla3: View {
    @State var sabor_de_palomitas : Saborespalomitas = .Mantequilla
    @State private var saborSeleccionado: Int = 1
    @State var quiere_palomitas : Bool = false
    
    
    @State var valor_slider = 50.0
    @State private var selectedColor: Color = .red
    @State private var cantidad: Int = 1
 
    
    var body: some View {
      
        ScrollView(){
            Spacer()
            //Checkbox
            VStack{
                Text("Formulario para calcular la cantidad de palomitas")
               
                HStack{
                    Spacer()
                    Text("Quieres palomitas")
                    CajaSeleccionada(checado: $quiere_palomitas, tamaño: 20)
                    Spacer()
                }
                
            }
            
            if(quiere_palomitas){
                HStack{
                    Text("Cual Sabor 7w7")
                    
                    HStack{
                        Picker(selection: $sabor_de_palomitas,
                               label: Text("Sabor de palomitas")) {
                            Text("Mantequilla")
                                .tag(Saborespalomitas.Mantequilla)
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
            
           
            
            
 /*
            VStack {
                Text("Hola mundo el valor del slider es: \(valor_slider)")
                Slider(value: $valor_slider, in: 0...100)
                
                ColorPicker("Color picker", selection: $selectedColor)
                
                Stepper(value: $cantidad, in: 1...10) {
                    Text("Cantidad: \(cantidad)")
                }
                 
                Picker(selection: $saborSeleccionado, label: Text("Selecciona un sabor")) {
                    Text("Vainilla").tag(1)
                    Text("Chocolate").tag(2)
                    Text("Fresa").tag(3)
                    Text("Oreo").tag(4)
                    Text("Pistasssssshhhes").tag(5)
                }
                
               
                DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
                
                
            }*/
        }
    }
}


#Preview {
    pantalla3()
        .environment(ControladorBasico())
}
