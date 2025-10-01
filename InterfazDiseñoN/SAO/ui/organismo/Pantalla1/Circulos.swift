import SwiftUI

struct CiruclosRedondos2: View {
    let numero_circulos = 12
    let radio: CGFloat = 180
    
    //intento
    
    let iconos_Nombres = [
        "person",
        "house",
        "heart",
        "star",
        "bell",
        "gear.shape",
        "camera",
        "bolt",
        "map",
        "moon",
        "cloud",
        "leaf",
        "figure.walk"
    ]
    //
    
    
    var body: some View {
        ForEach(0..<numero_circulos, id: \.self) { index in
                   ZStack {
                       Circle()
                           .frame(width: 40)
                           .foregroundColor(.gray)
                           .overlay {
                               Circle()
                                   .frame(width: 35)
                                   .foregroundStyle(.white)
                               Circle()
                                   .frame(width: 30)
                                   .foregroundStyle(.yellow)
                               
                            
                               Image(systemName: iconos_Nombres[index])
                                   .foregroundColor(.white)
                                   .font(.system(size: 20)) // Ajusta el tamaño del icono si es necesario
                           }
                           .offset(x: radio * cos(CGFloat(index) * 2 * .pi / CGFloat(numero_circulos)),
                                   y: radio * sin(CGFloat(index) * 2 * .pi / CGFloat(numero_circulos)))
                   }
               }
        
      
           }
}

#Preview {
    CiruclosRedondos2()
}
