import SwiftUI

struct CiruclosRedondos2: View {
    let numberOfCircles = 12 // Número de círculos alrededor de la imagen
    let radius: CGFloat = 180
    
    //intento
    
    let iconNames = [
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
        ForEach(0..<numberOfCircles, id: \.self) { index in
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
                               
                            
                               Image(systemName: iconNames[index])
                                   .foregroundColor(.white)
                                   .font(.system(size: 20)) // Ajusta el tamaño del icono si es necesario
                           }
                           .offset(x: radius * cos(CGFloat(index) * 2 * .pi / CGFloat(numberOfCircles)),
                                   y: radius * sin(CGFloat(index) * 2 * .pi / CGFloat(numberOfCircles)))
                   }
               }
        
      
           }
}

#Preview {
    CiruclosRedondos2()
}
